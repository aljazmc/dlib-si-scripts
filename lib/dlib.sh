# shellcheck shell=bash
#
# The body shared by every periodical script: each one sources this file and
# calls download with its own folder, search URL and number of result pages.

# download <folder> <search url> [pages] [second format]
#
#   folder         where the files go, next to the script, e.g. "Acrocephalus"
#   search url     the dlib.si search that lists every issue
#   pages          1 (default) fetches the URL as it is; N fetches the result
#                  pages <url>1 to <url>N, so the URL must end with "page="
#   second format  downloaded next to the PDFs: TEXT (default) or SIBELIUS
download() {

  local folder=$1 url=$2 pages=${3:-1} second=${4:-TEXT}
  local urls=("$url") page

  if [ ! -f "cookies.txt" ]; then
    echo "Please extract the 'cookies.txt' from www.dlib.si with the appropriate plugin for your web browser. Save 'cookies.txt' in the same directory as $(basename "$0")"
    exit
  fi

  if [ "$pages" -gt 1 ]; then
    urls=()
    for (( page=1; page<=pages; page+=1 )); do
      urls+=("$url$page")
    done
  fi

  mkdir -p "$folder"
  cd "$folder" || exit

  # one wget for all result pages, so it waits between them and writes them
  # in order into a fresh htmldump
  wget --load-cookies ../cookies.txt -w 7 -O htmldump "${urls[@]}"

  if [[ $(cat htmldump) == *"NAPAKA"* ]]; then
    echo ""
    echo "There were some problems with downloading files from dlib.si. Please, try again after a few moments."
    rm htmldump
    exit
  fi

  case $second in
    TEXT) set -- PDF pdf pdf TEXT txt text ;;
    SIBELIUS) set -- PDF pdf pdf SIBELIUS sib sib ;;
    *) echo "Unknown format: $second" >&2; exit 1 ;;
  esac

  extract_links "$1" "$2" "$3"
  extract_links "$4" "$5" "$6"
  fetch_files "$1" "$2" "$3"
  fetch_files "$4" "$5" "$6"

  ######################## find and remove wrong downloads ####################

  find . -type f -exec grep -q 'DOCTYPE html' '{}' \; -delete;
  find . -type f -empty -delete

  ################################# report ####################################

  report "$1" "$3"
  report "$4" "$6"
  echo "If some files are missing, run the script again"

  ################################ cleanup ####################################

  rm "$3"*
  rm "$6"*

}

# extract_links <kind> <extension> <prefix>
#
# Writes the download links of one kind (PDF, TEXT, SIBELIUS) found in
# htmldump to <prefix>list, or stops when there are none. A link is
# /stream/<document>/<uuid>/<kind>: 69 characters and the kind.
extract_links() {

  local kind=$1 extension=$2 prefix=$3

  sed "s/\/$kind/\/$kind\n/" htmldump \
    | sed 's/\/stream/\n\/stream/g' \
    | awk "length == $(( 69 + ${#kind} ))" \
    | sed "/$kind/!d" \
    | sed 's/^/https\:\/\/www.dlib.si/g' > "${prefix}list"

  if [ ! -s "${prefix}list" ]; then
    echo "${extension^^} download links weren't extracted successfully. Exiting..."
    exit
  fi

}

# fetch_files <kind> <extension> <prefix>
#
# Downloads every link in <prefix>list that isn't downloaded yet, as
# <kind>.<number>.<extension>, through a generated <prefix>runner script.
fetch_files() {

  local kind=$1 extension=$2 prefix=$3 expected counter

  expected=$(wc -l < "${prefix}list")

  for (( counter=1; counter<=expected; counter+=1 ));
  do
    echo "$kind.$counter.$extension" >> "${prefix}sexpected"
  done

  sort > "${prefix}sexpectedsorted" < "${prefix}sexpected"

  find "$kind"* -maxdepth 1 -name "$kind*" \
    | sort > "${prefix}sdownloadedsorted"

  comm "${prefix}sdownloadedsorted" "${prefix}sexpectedsorted" -3 \
    | sed "s/[$kind\.,\.$extension]//g" \
    | tr -d '[:blank:]' > "${prefix}linkstodownload"

  sed -e "s/^/\`sed '/g" \
    -e "s/$/\!d\' ${prefix}list\`/g" > "${prefix}slist" < "${prefix}linkstodownload"

  sed "s/^/wget -w 5 --load-cookies ..\/cookies.txt -O $kind./g;s/$/.$extension/g" > "${prefix}filenamer" < "${prefix}linkstodownload"

  echo "#!/bin/bash" > "${prefix}runner"

  chmod +x "${prefix}runner"

  paste -d ' ' "${prefix}filenamer" "${prefix}slist" >> "${prefix}runner"

  "./${prefix}runner"

}

# report <kind> <prefix>
report() {

  local kind=$1 prefix=$2 expected

  expected=$(wc -l < "${prefix}list")
  echo "$(( expected - $(find "$kind"* -maxdepth 1 -name "$kind*" | wc -l) )) ${prefix}s are missing."

}
