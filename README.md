[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

# dlib-si-scripts

This repository contains scripts for downloading periodicals from the Digital Library of Slovenia (dlib.si)

## > Features

* **Automated Downloading:** Scripts automate the process of downloading periodicals, saving you time and effort.
* **Multiple Formats:** `.pdf` and `.txt`.

## > Requirements

Following standard GNU/Linux utilities should be installed on the system:

<table border="0">
    <tr>
        <td> - awk </td>
        <td> - cat </td>
        <td> - cd </td>
    </tr>
    <tr>
        <td> - echo </td>
        <td> - find </td>
        <td> - head </td>
    </tr>
    <tr>
        <td> - mktemp </td>
        <td> - mv </td>
        <td> - sed </td>
    </tr>
    <tr>
        <td> - trap </td>
        <td> - xargs </td>
        <td> - wget </td>
    </tr>
</table>

## > Example

How to download magazine Analiza

```
## 1.) Clone the project with:
git clone https://github.com/aljazmc/dlib-si-scripts

## 2.) Move into the project with:
cd dlib-si-scripts

## 3.) Make a script executable with:
chmod +x Analiza.sh

## 4.) Afterwards run the script like this:
./Analiza.sh
```

Command `./Analiza.sh` will create a target directory 'Analiza' for downloads, and after a short time (or a few days, if we are talking about long running periodicals with thousands of files) a complete collection of periodical (in both .pdf and .txt format) will be downloaded in the target directory.

## > Magazines

<table border="0">
    <tr>
        <td>1551</td>
        <td>Acrocephalus</td>
        <td>Acta Agriculturae Slovenica</td>
        <td>Acta Biologica Slovenica</td>
    </tr>
    <tr>
        <td>Acta Geographica Slovenica</td>
        <td>Acta Geotechnica Slovenica</td>
        <td>Acta Histriae</td>
        <td>Akademija MM</td>
    </tr>
    <tr>
        <td>Akademski Glas</td>
        <td>Analiza</td>
        <td>Andragoska Spoznanja</td>
        <td>Angeljcek</td>
    </tr>
    <tr>
        <td>Annales Series Historia et Sociologia</td>
        <td>Annales Series Historia Naturalis</td>
        <td>Anthropos</td>
        <td>Arheoloski Vestnik</td>
    </tr>
    <tr>
        <td>Arhitektov Bilten</td>
        <td>Arhivi</td>
        <td>Ars et Humanitas</td>
        <td>Ars Mathematica Contemporanea</td>
    </tr>
    <tr>
        <td>Asian Studies</td>
        <td>Avtonomist</td>
        <td>Bojevnik</td>
        <td>Cas</td>
    </tr>
    <tr>
        <td>Casopis za Kritiko Znanosti</td>
        <td>Central European Public Administration Review</td>
        <td>Delavec</td>
        <td>Delavske Novice</td>
    </tr>
    <tr>
        <td>Delo 1928</td>
        <td>Delo in Varnost</td>
        <td>Delo Zivljenje</td>
        <td>Development Report</td>
    </tr>
    <tr>
        <td>Didakta</td>
        <td>Dileme</td>
        <td>Dogovori Clanki</td>
        <td>Domoljub</td>
    </tr>
    <tr>
        <td>Druzboslovne Razprave</td>
        <td>Drzavni Zakonik za Kraljevine in Dezele v Drzavnem Zboru Zastopane</td>
        <td>Dynamic Relationships Management Journal</td>
        <td>Economic Issues</td>
    </tr>
    <tr>
        <td>Ekonomski Izzivi</td>
        <td>Elektrotehniski Vestnik Clanki</td>
        <td>Farmacevtski Vestnik</td>
        <td>Farmakon</td>
    </tr>
    <tr>
        <td>Filozofski Vestnik</td>
        <td>Fizika v Soli</td>
        <td>Gasilec</td>
        <td>Geodetski Vestnik</td>
    </tr>
    <tr>
        <td>Geografija v Soli</td>
        <td>Geografski Obzornik</td>
        <td>Geografski Vestnik</td>
        <td>Geologija</td>
    </tr>
    <tr>
        <td>Glas</td>
        <td>Glasbena Mladina</td>
        <td>Glasilo Drustva Ekonomistov Maribor</td>
        <td>Gospodar</td>
    </tr>
    <tr>
        <td>Gospodar in Gospodinja</td>
        <td>Gospodarska Gibanja</td>
        <td>Gostilnicar</td>
        <td>Gozdarski Vestnik</td>
    </tr>
    <tr>
        <td>Gradbeni Vestnik</td>
        <td>Igra Ustvarjalnosti</td>
        <td>Informatica</td>
        <td>Informatica Medica Slovenica</td>
    </tr>
    <tr>
        <td>International Journal of Euro Mediterranean Studies</td>
        <td>Izzivi Managementu</td>
        <td>Izzivi Prihodnosti</td>
        <td>Javna Uprava</td>
    </tr>
    <tr>
        <td>Jezikoslovni Zapiski</td>
        <td>Jutro</td>
        <td>Kmetijske in Rokodelske Novice</td>
        <td>Literatura</td>
    </tr>
    <tr>
        <td>Lovec</td>
        <td>Management</td>
        <td>Managing Global Transitions</td>
        <td>Marburger Zeitung</td>
    </tr>
    <tr>
        <td>Matematika v Soli</td>
        <td>Mednarodna Revija za Javno Upravo</td>
        <td>Novi Cas</td>
        <td>Obzornik za Matematiko in Fiziko</td>
    </tr>
    <tr>
        <td>Organizacija</td>
        <td>Pettauer Zeitung</td>
        <td>Planinski Vestnik</td>
        <td>Problemi</td>
    </tr>
    <tr>
        <td>Problemi Eseji</td>
        <td>Problemi Literatura</td>
        <td>Problemi Razprave</td>
        <td>Psiholoska Obzorja</td>
    </tr>
    <tr>
        <td>Psiholoska Obzorja Clanki</td>
        <td>Ptujcan</td>
        <td>Revija za Univerzalno Odličnost</td>
        <td>Slavisticna Revija</td>
    </tr>
    <tr>
        <td>Slovenec</td>
        <td>Slovenski List 1896</td>
        <td>Slovenski List 1937</td>
        <td>Slovenski Narod</td>
    </tr>
    <tr>
        <td>Slovenski Tednik</td>
        <td>Socialist</td>
        <td>Socialno Delo Mix</td>
        <td>Sodobnost 1933</td>
    </tr>
    <tr>
        <td>Sodobnost 1963</td>
        <td>Strojniski Vestnik</td>
        <td>Studia Mythologica Slavica</td>
        <td>Tednik</td>
    </tr>
    <tr>
        <td>Teorija in Praksa</td>
        <td>Tim</td>
        <td>Uporabna Informatika</td>
        <td>Uprava</td>
    </tr>
    <tr>
        <td>Uradni list Ljudske republike Slovenije</td>
        <td>Uradni list Socialisticne Republike Slovenije</td>
        <td>Uradni vestnik Mestne obcine Ptuj</td>
        <td>Varstvo Narave</td>
    </tr>
    <tr>
        <td>Ventil</td>
        <td>Vestnik Instituta za Marksisticne Studije</td>
        <td>Zbornik za Umetnostno Zgodovino</td>
        <td>Zdravniski Vestnik</td>
    </tr>
    <tr>
        <td>Zdravstveno Varstvo</td>
        <td>Zgodovina v Soli</td>
        <td>Zgodovina za Vse</td>
        <td>Zgodovinski Casopis</td>
    </tr>
    <tr>
        <td>Zgodovinski Zapisi</td>
    </tr>
</table>
