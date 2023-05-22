[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

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

## > How to

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
