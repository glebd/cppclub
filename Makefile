TEX = xelatex
HEADER = beameropt.tex

PANDOC_FLAGS = -s --listings
PANDOC_FLAGS_BEAMER = -t beamer -H $(HEADER) --pdf-engine=$(TEX)

SOURCES_MD := $(wildcard ????-??-??.md)
SLIDES_MD := $(patsubst %.md,%.pdf,$(SOURCES_MD))
AUX_MD := $(patsubst %.md,%.aux,$(SOURCES_MD))
LOG_MD := $(patsubst %.md,%.log,$(SOURCES_MD))

SOURCES_RST := $(wildcard ????-??-??.rst)
SLIDES_RST := $(patsubst %.rst,%.pdf,$(SOURCES_RST))
AUX_RST := $(patsubst %.rst,%.aux,$(SOURCES_RST))
LOG_RST := $(patsubst %.rst,%.log,$(SOURCES_RST))
SLIDES_HTML := $(patsubst %.rst,%.html,$(SOURCES_RST))
SLIDES_YAML := $(patsubst %.rst,%.yaml,$(SOURCES_RST))

.PHONY: all clean

all: $(SLIDES_MD) $(SLIDES_YAML) $(SLIDES_RST) $(SLIDES_HTML)

%.pdf: %.md
	pandoc $(PANDOC_FLAGS) $(PANDOC_FLAGS_BEAMER) $< -o $@

%.yaml: %.rst
	python3 mkmeta.py $<

%.pdf: %.rst
	pandoc $(PANDOC_FLAGS) $(PANDOC_FLAGS_BEAMER) --metadata-file=$(basename $<).yaml $< -o $@

%.html: %.rst
	pandoc $(PANDOC_FLAGS) --metadata-file=$(basename $<).yaml $< -o $@

clean:
	-rm -f $(SLIDES_MD) $(SLIDES_YAML) $(SLIDES_RST) $(SLIDES_HTML) $(AUX) $(LOG) missfont.log

# The following command works with reST source + YAML metadata
# pandoc -t beamer -s --listings -H beameropt.tex --pdf-engine=xelatex --metadata-file=2019-01-10.yaml -o 2019-01-10.pdf 2019-01-10.rst
