# Memoire presentation

Created with [impress.js](https://github.com/impress/impress.js) form [@bartaz](https://github.com/bartaz) and a [pandoc html template](https://gist.github.com/jgm/5665065/raw/impress-template.html) from [@jgm](https://github.com/jgm/).

## Usage

Modify the `presentation.md` file to suit your needs

Run the automatic rebuild & browser refresh script:
```
./make_auto.sh
```

## How I built it (not necessary to use this repo):
First get impress.js and the template:
```
git submodule add https://github.com/bartaz/impress.js impress.js
wget https://gist.github.com/jgm/5665065/raw/impress-template.html
```

Then build your presentation with pandoc:
```
pandoc --template impress-template.html -V impress-url=impress.js -s -t html5 --section-divs -o presentation.html presentation.md
```

It looks nice !

Then do your own cooking: personally, I added the script files and modified the template to do an automatic rebuild & refresh.
