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
        <td>Acta Medico Biotechnica</td>
    </tr>
    <tr>
        <td>Akademija MM</td>
        <td>Akademski Glas</td>
        <td>Analiza</td>
        <td>Andragoska Spoznanja</td>
    </tr>
    <tr>
        <td>Angeljcek</td>
        <td>Annales Series Historia et Sociologia</td>
        <td>Annales Series Historia Naturalis</td>
        <td>Anthropos</td>
    </tr>
    <tr>
        <td>Arheoloski Vestnik</td>
        <td>Arhitektov Bilten</td>
        <td>Arhivi</td>
        <td>Ars et Humanitas</td>
    </tr>
    <tr>
        <td>Ars Mathematica Contemporanea</td>
        <td>Asian Studies</td>
        <td>Avtonomist</td>
        <td>Bojevnik</td>
    </tr>
    <tr>
        <td>Cas</td>
        <td>Casopis za Kritiko Znanosti</td>
        <td>Central European Public Administration Review</td>
        <td>CEPS Journal</td>
    </tr>
    <tr>
        <td>Delavec</td>
        <td>Delavske Novice</td>
        <td>Delo 1928</td>
        <td>Delo in Varnost</td>
    </tr>
    <tr>
        <td>Delo Zivljenje</td>
        <td>Development Report</td>
        <td>Didakta</td>
        <td>Dileme</td>
    </tr>
    <tr>
        <td>Dogovori Clanki</td>
        <td>Domoljub</td>
        <td>Druzboslovne Razprave</td>
        <td>Drzavni Zakonik za Kraljevine in Dezele v Drzavnem Zboru Zastopane</td>
    </tr>
    <tr>
        <td>Dynamic Relationships Management Journal</td>
        <td>Economic Issues</td>
        <td>Ekonomski Izzivi</td>
        <td>Elektrotehniski Vestnik Clanki</td>
    </tr>
    <tr>
        <td>Farmacevtski Vestnik</td>
        <td>Farmakon</td>
        <td>Filozofski Vestnik</td>
        <td>Fizika v Soli</td>
    </tr>
    <tr>
        <td>Gasilec</td>
        <td>Geodetski Vestnik</td>
        <td>Geografija v Soli</td>
        <td>Geografski Obzornik</td>
    </tr>
    <tr>
        <td>Geografski Vestnik</td>
        <td>Geologija</td>
        <td>Glas</td>
        <td>Glasbena Mladina</td>
    </tr>
    <tr>
        <td>Glasilo Drustva Ekonomistov Maribor</td>
        <td>Gospodar</td>
        <td>Gospodar in Gospodinja</td>
        <td>Gospodarska Gibanja</td>
    </tr>
    <tr>
        <td>Gostilnicar</td>
        <td>Gozdarski Vestnik</td>
        <td>Gradbeni Vestnik</td>
        <td>Igra Ustvarjalnosti</td>
    </tr>
    <tr>
        <td>Informatica</td>
        <td>Informatica Medica Slovenica</td>
        <td>International Journal of Euro Mediterranean Studies</td>
        <td>Izzivi Managementu</td>
    </tr>
    <tr>
        <td>Izzivi Prihodnosti</td>
        <td>Javna Uprava</td>
        <td>Jezikoslovni Zapiski</td>
        <td>Jutro</td>
    </tr>
    <tr>
        <td>Kmetijske in Rokodelske Novice</td>
        <td>Kronika</td>
        <td>Literatura</td>
        <td>Lovec</td>
    </tr>
    <tr>
        <td>Management</td>
        <td>Managing Global Transitions</td>
        <td>Marburger Zeitung</td>
        <td>Matematika v Soli</td>
    </tr>
    <tr>
        <td>Mednarodna Revija za Javno Upravo</td>
        <td>Novi Cas</td>
        <td>Obzornik za Matematiko in Fiziko</td>
        <td>Organizacija</td>
    </tr>
    <tr>
        <td>Pettauer Zeitung</td>
        <td>Planinski Vestnik</td>
        <td>Problemi</td>
        <td>Problemi Eseji</td>
    </tr>
    <tr>
        <td>Problemi Literatura</td>
        <td>Problemi Razprave</td>
        <td>Psiholoska Obzorja</td>
        <td>Psiholoska Obzorja Clanki</td>
    </tr>
    <tr>
        <td>Ptujcan</td>
        <td>Revija za Univerzalno Odličnost</td>
        <td>Slavisticna Revija</td>
        <td>Slovenec</td>
    </tr>
    <tr>
        <td>Slovenski List 1896</td>
        <td>Slovenski List 1937</td>
        <td>Slovenski Narod</td>
        <td>Slovenski Tednik</td>
    </tr>
    <tr>
        <td>Socialist</td>
        <td>Socialno Delo Mix</td>
        <td>Sodobnost 1933</td>
        <td>Sodobnost 1963</td>
    </tr>
    <tr>
        <td>Strojniski Vestnik</td>
        <td>Studia Mythologica Slavica</td>
        <td>Tednik</td>
        <td>Teorija in Praksa</td>
    </tr>
    <tr>
        <td>Tim</td>
        <td>Uporabna Informatika</td>
        <td>Uprava</td>
        <td>Uradni list Ljudske Republike Slovenije</td>
    </tr>
    <tr>
        <td>Uradni list Socialisticne Republike Slovenije</td>
        <td>Uradni vestnik Mestne obcine Ptuj</td>
        <td>Varstvo Narave</td>
        <td>Ventil</td>
    </tr>
    <tr>
        <td>Vestnik Instituta za Marksisticne Studije</td>
        <td>Zbornik za Umetnostno Zgodovino</td>
        <td>Zdravniski Vestnik</td>
        <td>Zdravstveno Varstvo</td>
    </tr>
    <tr>
        <td>Zgodovina v Soli</td>
        <td>Zgodovina za Vse</td>
        <td>Zgodovinski Casopis</td>
        <td>Zgodovinski Zapisi</td>
    </tr>
</table>
