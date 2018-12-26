TEX = xelatex
HEADER = beameropt.tex

PANDOC_FLAGS = -t beamer \
	-s \
	--listings \
	-H $(HEADER) \
	--latex-engine=$(TEX)

SOURCES := $(wildcard ????-??-??.md)

SLIDES := $(patsubst %.md,%.pdf,$(SOURCES))
AUX := $(patsubst %.md,%.aux,$(SOURCES))
LOG := $(patsubst %.md,%.log,$(SOURCES))

.PHONY: all clean

all: $(SLIDES)

%.pdf: %.md $(HEADER)
	pandoc $(PANDOC_FLAGS) $< -o $@

clean:
	-rm -f $(SLIDES) $(AUX) $(LOG) missfont.log

# The following command works with reST source + YAML metadata
# pandoc -t beamer -s --listings -H beameropt.tex --pdf-engine=xelatex --metadata-file=2019-01-10.yaml -o 2019-01-10.pdf 2019-01-10.rst
