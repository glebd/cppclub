# C++ Club

This repository contains notes, links and materials for the C++ Club meetings.

Disclaimer: all opinions posted in this repository are my own and not those of my employer.

Author: Gleb Dolgich

## Building Slides

### Prerequisites

* Pandoc
* LaTeX

### Command

```bash
make
```

### Installing mermaid filter for pandoc

```bash
pip3 install pandoc-mermaid-filter
pandoc -s --listings -t beamer -H beameropt.tex --pdf-engine=xelatex -F mermaid-filter 2019-11-07.md -o 2019-11-07.pdf
```

## Hugo

### Install

    brew install hugo

### Server

    hugo server

### Cactus Theme

Add subtree:

    git remote add cactus https://github.com/glebd/hugo-theme-cactus.git
    git subtree add --squash --prefix=themes/cactus cactus main

Update subtree:

    git fetch cactus
    git subtree pull --squash --prefix=themes/cactus cactus main

### Links

* https://gohugo.io/getting-started/quick-start/
* https://themes.gohugo.io/themes/hugo-theme-cactus/ -> https://github.com/glebd/hugo-theme-cactus
* https://themes.gohugo.io/themes/etch/
* https://themes.gohugo.io/themes/vanilla-bootstrap-hugo-theme/
* https://github.com/dsrkafuu/hugo-theme-fuji
* https://themes.gohugo.io/themes/smigle-hugo-theme/
