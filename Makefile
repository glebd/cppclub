TEX = xelatex
HEADER = beameropt.tex

PANDOC_FLAGS = -t beamer \
	-s \
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
