# dlib-si-scripts
Download scripts for the Digital Library of Slovenia (dlib.si)

## > Requirements

Following standard GNU/Linux utilities should be installed on the system:

- awk
- cat
- cd
- chmod
- echo
- find
- head
- mv
- sed
- xargs
- wget

## > How to use dlib-si-scripts

1.) Clone the project with:
```
git clone https://github.com/aljazmc/dlib-si-scripts
```
2.) Move into project with:
```
cd dlib-si-scripts
```
3.) Make a script (for example: Analiza) executable with:
```
chmod +x Analiza.sh
```
4.) Afterwards run a script like this:
```
./Analiza.sh
```

This command will create a target directory 'Analiza' for downloads, and after a short time (or a few days, if we are talking about long running periodicals with thousands of files) a complete collection of periodical (in both .pdf and .txt format) will be downloaded in the target directory of each script.

## > LICENSE: [MIT](https://github.com/aljazmc/dlib-si-scripts/blob/main/LICENSE)
