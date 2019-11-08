# C++ Club

This repository contains notes, links and materials for the C++ Club meetings.

Disclaimer: all opinions posted in this repository are my own and not those of my employer.

Author: Gleb Dolgich

# Building Slides

## Prerequisites

* Pandoc
* LaTeX

## Command

```bash
make
```

## Installing mermaid filter for pandoc

```bash
pip3 install pandoc-mermaid-filter
pandoc -s --listings -t beamer -H beameropt.tex --pdf-engine=xelatex -F mermaid-filter 2019-11-07.md -o 2019-11-07.pdf
```
