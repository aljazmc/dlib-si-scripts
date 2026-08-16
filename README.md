[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

# dlib-si-scripts

This repository contains scripts for downloading periodicals from the Digital Library of Slovenia (dlib.si)

## > Features

* **Automated Downloading:** Scripts automate the process of downloading periodicals, saving you time and effort.
* **Multiple Formats:** `.pdf` and `.txt`.

## > Requirements

File 'cookies.txt' should be extracted from dlib.si and placed in the same directory with shell scripts.
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

## 2.) Extract cookies.txt with the browser plugin of your choice and save it in the same folder as Analiza.sh

## 3.) Move into the project with:
cd dlib-si-scripts

## 4.) Make a script executable with:
chmod +x Analiza.sh

## 5.) Afterwards run the script like this:
./Analiza.sh
```

Command `./Analiza.sh` will create a target directory 'Analiza' for downloads, and after a short time (or a few days, if we are talking about long running periodicals with thousands of files) a complete collection of periodical (in both .pdf and .txt format) will be downloaded in the target directory.

## > List of magazines

1551
Academica Turistica
Acrocephalus
Acta Agriculturae Slovenica
Acta Biologica Slovenica
Acta Ecclesiastica Sloveniae
Acta Geographica Slovenica
Acta Geotechnica Slovenica
Acta Histriae
Acta Medico Biotechnica
Akademija MM
Akademski Glas
Analiza
Andragoska Spoznanja
Angeljcek
Annales Series Historia et Sociologia
Annales Series Historia Naturalis
Anthropos
Arheoloski Vestnik
Arhitektov Bilten
Arhivi
Ars et Humanitas
Ars Mathematica Contemporanea
Asian Studies
Avtonomist
Bojevnik
Cas
Casopis za Kritiko Znanosti
Central European Public Administration Review
CEPS Journal
Communio
Delavec
Delavske Novice
Delo 1928
Delo in Varnost
Delo Zivljenje
De Musica Disserenda
Development Report
Didakta
Dileme
Dogovori Clanki
Domoljub
Druzboslovne Razprave
Drzavni Zakonik za Kraljevine in Dezele v Drzavnem Zboru Zastopane
Dynamic Relationships Management Journal
Economic and Business Review
Economic Issues
Edinost in Dialog
Ekonomija Plus
Ekonomski Izzivi
Ekonomsko Ogledalo
Elektrotehniski Vestnik Clanki
Evgenika
Farmacevtski Vestnik
Farmakon
Filozofski Vestnik
Fizika v Soli
Folia Biologica et Geologica
Gasilec
Geodetski Vestnik
Geografija v Soli
Geografski Obzornik
Geografski Vestnik
Geologija
Glas
Glasbena Mladina
Glasilo Drustva Ekonomistov Maribor
Gospodar
Gospodar in Gospodinja
Gospodarska Gibanja
Gostilnicar
Gozdarski Vestnik
Gradbeni Vestnik
Igra Ustvarjalnosti
Informatica
Informatica Medica Slovenica
International Journal of Euro Mediterranean Studies
Izzivi Managementu
Izzivi Prihodnosti
Javna Uprava
Jezikoslovni Zapiski
Jutro
Kakovostna Starost
Kinesiologia Slovenica
Kmetijske in Rokodelske Novice
Kronika
LIFE NarcIS
Literatura
Lovec
Management
Managing Global Transitions
Marburger Zeitung
Matematika v Soli
Mednarodna Revija za Javno Upravo
Natura Sloveniae
Novi Akordi
Novi Cas
Obzornik za Matematiko in Fiziko
Organizacija
Pettauer Zeitung
Planinski Vestnik
Problemi
Problemi Eseji
Problemi Literatura
Problemi Razprave
Psiholoska Obzorja
Psiholoska Obzorja Clanki
Ptujcan
Revija za Univerzalno Odličnost
Slavisticna Revija
Slovenec
Slovenski List 1896
Slovenski List 1937
Slovenski Narod
Slovenski Tednik
Socialist
Socialno Delo Mix
Sodobnost 1933
Sodobnost 1963
Strojniski Vestnik
Studia Mythologica Slavica
Tednik
Teorija in Praksa
Tim
Uporabna Informatika
Uprava
Uradni List Ljudske Republike Slovenije
Uradni List Socialisticne Republike Slovenije
Uradni Vestnik Mestne obcine Ptuj
Uradno Glasilo Slovenskih Obcin
Varstvo Narave
Ventil
Vestnik Instituta za Marksisticne Studije
Zbornik za Umetnostno Zgodovino
Zdravniski Vestnik
Zdravstveno Varstvo
Zgodovina v Soli
Zgodovina za Vse
Zgodovinski Casopis
Zgodovinski Zapisi

