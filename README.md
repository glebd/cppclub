# C++ Club

This repository contains notes, links and materials for the C++ Club meetings.

Disclaimer: all opinions posted in this repository are my own and not those of my employer.

Author: Gleb Dolgich

## Hugo

### Install

    brew install hugo
    brew install docutils
    brew install asciidoctor
    gem install asciidoctor-html5s
    which asciidoctor # -> /opt/homebrew/opt/ruby/bin/asciidoctor
    gem install rouge

### Configure

In `config.toml`, add:

```toml
[security]
  [security.exec]
    allow = ['^(dart-)?sass(-embedded)?$', '^go$', '^npx$', '^postcss$', 'rst2html.py', 'asciidoctor']

[markup.asciidocExt]
  backend = 'html5s'
  doctype = 'book'
  extensions = ['asciidoctor-html5s']
  failureLevel = 'fatal'
  noHeaderOrFooter = true
  preserveTOC = false
  safeMode = 'unsafe'
  sectionNumbers = false
  trace = false
  verbose = false
  workingFolderCurrent = false
  [markup.asciidocExt.attributes]
    "icons" = "font"
```

### Server

    hugo server

### Cactus Theme

Add subtree:

    git remote add cactus https://github.com/glebd/hugo-theme-cactus.git
    git subtree add --squash --prefix=themes/cactus cactus main

Update subtree:

    git fetch cactus
    git subtree pull --squash --prefix=themes/cactus cactus main

### Chroma code highlighter styles

https://xyproto.github.io/splash/docs/all.html

### Shortcodes

https://gohugo.io/content-management/shortcodes/

### Links

* https://gohugo.io/getting-started/quick-start/
* https://themes.gohugo.io/themes/hugo-theme-cactus/ -> https://github.com/glebd/hugo-theme-cactus
* https://themes.gohugo.io/themes/etch/
* https://themes.gohugo.io/themes/vanilla-bootstrap-hugo-theme/
* https://github.com/dsrkafuu/hugo-theme-fuji
* https://themes.gohugo.io/themes/smigle-hugo-theme/
