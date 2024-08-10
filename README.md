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

## > How to

1.) First make a script executable with:
```
chmod +x Analiza.sh
```

2.) Afterwards run a single script like this:
```
./Analiza.sh
```

This command will create a target directory 'Analiza' for downloads, and after a short time (or a few days, if we are talking about long running periodicals with thousands of files) everything will be downloaded there.

LICENSE: [MIT](https://github.com/aljazmc/dlib-si-scripts/blob/main/LICENSE)
