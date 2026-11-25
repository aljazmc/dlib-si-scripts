# dlib-si-scripts

[![CI](https://github.com/aljazmc/dlib-si-scripts/actions/workflows/ci.yml/badge.svg)](https://github.com/aljazmc/dlib-si-scripts/actions/workflows/ci.yml)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Bash](https://img.shields.io/badge/Bash-scripts-4eaa25?logo=gnubash&logoColor=white)](https://www.gnu.org/software/bash/)
[![wget](https://img.shields.io/badge/wget-GNU-a42e2b?logo=gnu&logoColor=white)](https://www.gnu.org/software/wget/)
[![Periodicals](https://img.shields.io/badge/periodicals-155-0a7bbb)](#list-of-periodicals)
[![ShellCheck](https://img.shields.io/badge/ShellCheck-checked-4eaa25?logo=gnubash&logoColor=white)](https://www.shellcheck.net/)
[![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-fe5196?logo=conventionalcommits&logoColor=white)](https://www.conventionalcommits.org/)

Whole periodicals from the Digital Library of Slovenia ([dlib.si](https://www.dlib.si)),
one command each. A short script per periodical downloads every issue the
library lists, as PDF and plain text, into a folder named after it: 155
periodicals of Slovenian history, science and culture, from *1551* to
*Zgodovinski časopis*.

## Features

- **One command per periodical.** `./Analiza.sh` downloads the complete
  collection of *Analiza*; long-running periodicals with thousands of files
  take a few days, but need nothing more from you.
- **PDF and text.** Every issue as `.pdf` and `.txt`; *Novi Akordi* as
  `.pdf` and Sibelius `.sib` scores.
- **155 periodicals**, from scientific journals to historical newspapers
  such as *Slovenski Narod*, the largest with 232 pages of search results.
- **One shared library.** Every script is a few lines over `lib/dlib.sh`, so
  adding a periodical means copying a script and changing its folder and
  search URL.
- **Safe without cookies.** Without `cookies.txt`, every script stops before
  it creates a folder or downloads anything.

## Quick start

```sh
git clone https://github.com/aljazmc/dlib-si-scripts.git
cd dlib-si-scripts
# save cookies.txt here first, see Manual cookies below
./Analiza.sh
```

`./Analiza.sh` creates the folder `Analiza` and downloads the whole
collection of the periodical into it, in both `.pdf` and `.txt` format.

## Requirements

| Requirement | Notes |
| --- | --- |
| `cookies.txt` | the cookies of a browser session on dlib.si, in the root of the repository (see [Manual cookies](#manual-cookies)) |
| Bash and GNU tools | `awk`, `cat`, `chmod`, `comm`, `find`, `grep`, `mkdir`, `paste`, `rm`, `sed`, `sort`, `tr`, `wc` |
| wget | downloads the issues with the session's cookies |

## Manual cookies

The scripts download with `wget --load-cookies cookies.txt`, so they need the
cookies of a browser session on dlib.si saved in the Netscape `cookies.txt`
format. Without the file every script stops before it creates a folder or
downloads anything.

### With a browser extension (recommended)

1. Install an extension that exports cookies in the Netscape format, for
   example *cookies.txt* for Firefox or *Get cookies.txt LOCALLY* for
   Chrome/Chromium.
2. Open [https://www.dlib.si](https://www.dlib.si) and browse it for a moment
   (open a search and an issue), so the site sets its cookies. If you have a
   dlib.si account, log in first.
3. While the dlib.si tab is open, click the extension and export the cookies
   **for the current site only** (not all cookies of the browser).
4. Save the file as `cookies.txt` in the root of this repository, next to the
   `.sh` scripts.

### By hand, from the browser's developer tools

1. Open [https://www.dlib.si](https://www.dlib.si) and browse it for a moment.
2. Press `F12`, open *Storage* (Firefox) or *Application* (Chrome/Chromium)
   and select *Cookies* → `https://www.dlib.si`.
3. Create `cookies.txt` in the root of this repository. The first line must
   be:

   ```
   # Netscape HTTP Cookie File
   ```

   followed by one line per cookie with seven fields separated by **tabs**
   (not spaces):

   ```
   domain	include-subdomains	path	https-only	expires	name	value
   ```

   - `domain`: the cookie's domain as shown, e.g. `www.dlib.si` or `.dlib.si`
   - `include-subdomains`: `TRUE` if the domain starts with a dot, else `FALSE`
   - `path`: usually `/`
   - `https-only`: `TRUE` if the cookie is marked *Secure*, else `FALSE`
   - `expires`: the expiry as a Unix timestamp in seconds, `0` for session
     cookies
   - `name` and `value`: copied from the developer tools

   For example:

   ```
   # Netscape HTTP Cookie File
   www.dlib.si	FALSE	/	TRUE	0	SomeCookieName	SomeCookieValue
   ```

### Check and refresh

Run the scripts from the root of the repository (`./Analiza.sh`), since they
look for `./cookies.txt` there. If downloads fail or come back as error pages,
the cookies have most likely expired: export a fresh `cookies.txt` and run the
script again.

`cookies.txt` holds your session, so do not share it. It is listed in
`.gitignore` and will not be committed.

## How it works

Every periodical has a short script, such as `Analiza.sh`, that calls the
shared body in `lib/dlib.sh`:

```sh
#!/bin/bash

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Analiza" \
  "https://www.dlib.si/results/?=&query=...&pageSize=100"
```

`download <folder> <search url> [pages] [second format]` downloads every
issue the dlib.si search lists into `<folder>/`:

- `pages`: for searches with more than one page of results, the number of
  pages; the URL must then end with `page=`, and pages 1 to N are fetched.
- `second format`: `TEXT` (the default) downloads `.txt` files next to the
  PDFs, `SIBELIUS` downloads `.sib` scores instead.

To add a periodical, copy a script, name it after the periodical and change
the folder and the search URL.

## Tests

```sh
bash tests/test_cookies.sh
```

checks offline that every script stops and asks for `cookies.txt` before it
creates a folder or downloads anything: `wget` and `curl` are replaced by
stand-ins that record any call. GitHub Actions checks all scripts with
[ShellCheck](https://www.shellcheck.net/) on every push and pull request, see
[.github/workflows/lint.yml](.github/workflows/lint.yml).

## List of periodicals

<details>
<summary>155 periodicals</summary>

1551, Academica Turistica, Acrocephalus, Acta Agriculturae Slovenica, Acta Biologica Slovenica, Acta Carsologica, Acta Chimica Slovenica, Acta Ecclesiastica Sloveniae, Acta Geographica Slovenica, Acta Geotechnica Slovenica, Acta Histriae, Acta Hydrotechnica, Acta Medico Biotechnica, Advances in Business Related Scientific Research Journal, Advances in Production Engineering and Management, Akademija MM, Akademski Glas, Analiza, Andragoska Spoznanja, Angeljcek, Annales Series Historia et Sociologia, Annales Series Historia Naturalis, Anthropos, Arheoloski Vestnik, Arhitektov Bilten, Arhivi, Ars et Humanitas, Ars Mathematica Contemporanea, Asian Studies, Avtonomist, Blejske Delavnice iz Fizike, Bojevnik, Casopis za Kritiko Znanosti, Casopis za Zgodovino in Narodopisje, Cas, Central European Public Administration Review, CEPS Journal, Communio, Delavec, Delavske Novice, Delo 1928, Delo in Varnost, Delovni Zvezki Zavod za Makroekonomske Analize in Razvoj, Delo Zivljenje, De Musica Disserenda, Development Report, Didakta, Dignitas, Dileme, Dogovori Clanki, Domoljub, Druzboslovne Razprave, Drzavni Zakonik za Kraljevine in Dezele v Drzavnem Zboru Zastopane, Dynamic Relationships Management Journal, Economic and Business Review, Economic Issues, Edinost in Dialog, Ekonomija Plus, Ekonomski Izzivi, Ekonomsko Ogledalo, Elektrotehniski Vestnik Clanki, Evgenika, Farmacevtski Vestnik, Farmakon, Filozofski Vestnik, Fizika v Soli, Folia Biologica et Geologica, Gasilec, Geodetski Vestnik, Geografija v Soli, Geografski Obzornik, Geografski Vestnik, Geologija, Glasbena Mladina, Glasilo Drustva Ekonomistov Maribor, Glas Podzemlja, Glas, Glej Netopir, Gospodar in Gospodinja, Gospodar, Gospodarska Gibanja, Gostilnicar, Gozdarski Vestnik, Gradbeni Vestnik, IB Revija, Igra Ustvarjalnosti, Informatica Medica Slovenica, Informatica, International Journal of Euro Mediterranean Studies, Izzivi Managementu, Izzivi Prihodnosti, Javna Uprava, Jezikoslovni Zapiski, Jutro, Kakovostna Starost, Kinesiologia Slovenica, Klik, Kmetijske in Rokodelske Novice, Kronika, LIFE NarcIS, Linguistica, Literatura, Lovec, Management, Managing Global Transitions, Marburger Zeitung, Matematika v Soli, Mednarodna Revija za Javno Upravo, Natura Sloveniae, Novi Akordi, Novi Cas, Obzornik za Matematiko in Fiziko, Obzornik Zdravstvene Nege, Organizacija, Pettauer Zeitung, Planinski Vestnik, Problemi Eseji, Problemi Literatura, Problemi Razprave, Problemi, Psiholoska Obzorja Clanki, Psiholoska Obzorja, Ptujcan, Revija za Univerzalno Odlicnost, Slavisticna Revija, Slovenec, Slovenski List 1896, Slovenski List 1937, Slovenski Narod, Slovenski Tednik, Socialist, Socialno Delo Mix, Sodobnost 1933, Sodobnost 1963, Strojniski Vestnik, Studia Mythologica Slavica, Tednik, Teorija in Praksa, Tim, Uporabna Informatika, Uprava, Uradni List Ljudske Republike Slovenije, Uradni List Socialisticne Republike Slovenije, Uradni Vestnik Mestne obcine Ptuj, Uradno Glasilo Slovenskih Obcin, Varstvo Narave, Ventil, Vestnik Instituta za Marksisticne Studije, Zbornik za Umetnostno Zgodovino, Zdravniski Vestnik, Zdravstveno Varstvo, Zgodovina v Soli, Zgodovina za Vse, Zgodovinski Casopis, Zgodovinski Zapisi

</details>

## License

The scripts are licensed under the [MIT License](LICENSE). The periodicals you
download are not covered by it; the terms of dlib.si and of their publishers
apply to them.
