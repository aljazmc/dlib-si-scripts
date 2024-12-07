# dlib-si-scripts
Download scripts for the Digital Library of Slovenia (dlib.si)

## > Requirements

Following standard GNU/Linux utilities should be installed on the system:

<table border="0">
    <tr>
        <td> - awk </td>
        <td> - cat </td>
        <td> - cd </td>
        <td> - echo </td>
        <td> - find </td>
    </tr>
    <tr>
        <td> - head </td>
        <td> - mv </td>
        <td> - sed </td>
        <td> - xargs </td>
        <td> - wget </td>
    </tr>
</table>

## > How to use dlib-si-scripts

Use case for magazine Analiza:

1.) Clone the project with:
```
git clone https://github.com/aljazmc/dlib-si-scripts
```
2.) Move into the project with:
```
cd dlib-si-scripts
```
3.) Make a script (for example: Analiza) executable with:
```
chmod +x Analiza.sh
```
4.) Afterwards run the script like this:
```
./Analiza.sh
```

This command will create a target directory 'Analiza' for downloads, and after a short time (or a few days, if we are talking about long running periodicals with thousands of files) a complete collection of periodical (in both .pdf and .txt format) will be downloaded in the target directory.

## > Downloaders are available for magazines:

<ul>
    <li> Acrocephalus </li>
    <li> Acta Agriculturae Slovenica </li>
    <li> Acta Biologica Slovenica </li>
    <li> Acta Geographica Slovenica </li>
    <li> Acta Geotechnica Slovenica </li>
    <li> Acta Histriae </li>
    <li> Analiza </li>
    <li> Andragoška Spoznanja </li>
    <li> Annales Series Historia et Sociologia </li>
    <li> Annales Series Historia Naturalis </li>
    <li> Anthropos </li>
    <li> Arheološki Vestnik </li>
    <li> Arhitektov Bilten </li>
    <li> Arhivi </li>
    <li> Ars et Humanitas </li>
    <li> Ars Mathematica Conteporanea </li>
    <li> Asian Studies </li>
    <li> Bojevnik </li>
    <li> Časopis za Kritiko Znanosti </li>
    <li> Central European Public Administration Review </li>
    <li> Delavec </li>
    <li> Delavske Novice </li>
    <li> Delo Življenje </li>
    <li> Development Report </li>
    <li> Didakta </li>
    <li> Dileme </li>
    <li> Dogovori Članki </li>
    <li> Družboslovne Razprave </li>
    <li> Državni Zakonik za Kraljevine in Dežele v Državnem Zboru Zastopane </li>
    <li> Dynamic Relationships Management Journal </li>
    <li> Economic Issues </li>
    <li> Ekonomski Izzivi </li>
    <li> Elektrotehniški Vestnik Članki </li>
    <li> Filozofski Vestnik </li>
    <li> Fizika v Šoli </li>
    <li> Geodetski Vestnik </li>
    <li> Geografija v Šoli </li>
    <li> Geografski Obzornik </li>
    <li> Geografski Vestnik </li>
    <li> Geologija </li>
    <li> Glas </li>
    <li> Glasbena Mladina </li>
    <li> Glasilo Društva Ekonomistov Maribor </li>
    <li> Gospodarska Gibanja </li>
    <li> Gozdarski Vestnik </li>
    <li> Gradbeni Vestnik </li>
    <li> Igra Ustvarjalnosti </li>
    <li> Informatica </li>
    <li> Informatica Medica Slovenica </li>
    <li> International Journal of Euro Mediterranean Studies </li>
    <li> Izzivi Managementu </li>
    <li> Izzivi Prihodnosti </li>
    <li> Jezikoslovni Zapiski </li>
    <li> Jutro </li>
    <li> Literatura </li>
    <li> Management </li>
    <li> Managing Global Transitions </li>
    <li> Marburger Zeitung </li>
    <li> Matematika v Šoli </li>
    <li> Mednarodna Revija za Javno Upravo </li>
    <li> Obzornik za Matematiko in Fiziko </li>
    <li> Organizacija </li>
    <li> Pettauer Zeitung </li>
    <li> Problemi </li>
    <li> Problemi Eseji </li>
    <li> Problemi Literatura </li>
    <li> Problemi Razprave </li>
    <li> Psihološka Obzorja </li>
    <li> Psihološka Obzorja Članki </li>
    <li> Ptujčan </li>
    <li> Revija za Univerzalno Odličnost </li>
    <li> Slavistična Revija </li>
    <li> Slovenec </li>
    <li> Slovenski List 1896 </li>
    <li> Slovenski List 1937 </li>
    <li> Slovenski Narod </li>
    <li> Slovenski Tednik </li>
    <li> Socialno Delo Mix </li>
    <li> Sodobnost 1933 </li>
    <li> Sodobnost 1963 </li>
    <li> Strojniški Vestnik </li>
    <li> Studia Mythologica Slavica </li>
    <li> Tednik </li>
    <li> Teorija in Praksa </li>
    <li> Tim </li>
    <li> Uporabna Informatika </li>
    <li> Uprava </li>
    <li> Uradni List Ljudske Republike Slovenije </li>
    <li> Uradni List Socialistične Republike Slovenije </li>
    <li> Uradni Vestnik Mestne Občine Ptuj </li>
    <li> Varstvo Narave </li>
    <li> Ventil </li>
    <li> Vestnik Instituta za Marksistične Študije </li>
    <li> Zbornik za Umetnostno Zgodovino </li>
    <li> Zdravniski Vestnik </li>
    <li> Zdravstveno Varstvo </li>
    <li> Zgodovina v Šoli </li>
    <li> Zgodovina za Vse </li>
    <li> Zgodovinski Časopis </li>
    <li> Zgodovinski Zapisi </li>
</tr>

## > LICENSE: [MIT](https://github.com/aljazmc/dlib-si-scripts/blob/main/LICENSE)
