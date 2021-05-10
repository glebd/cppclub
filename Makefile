TEX = xelatex
HEADER = beameropt.tex

PANDOC_FLAGS = -s --listings --pdf-engine=$(TEX)
PANDOC_FLAGS_BEAMER = -t beamer -H $(HEADER)

SOURCES_MD := $(wildcard ????-??-??.md)
SOURCES_MD_V2 := $(wildcard CppClubUK-???-????????.md)
SLIDES_MD := $(patsubst %.md,%.pdf,$(SOURCES_MD))
SLIDES_MD_V2 := $(patsubst %.md,%.pdf,$(SOURCES_MD_V2))
AUX_MD := $(patsubst %.md,%.aux,$(SOURCES_MD))
AUX_MD_V2 := $(patsubst %.md,%.aux,$(SOURCES_MD_V2))
LOG_MD := $(patsubst %.md,%.log,$(SOURCES_MD))
LOG_MD_V2 := $(patsubst %.md,%.log,$(SOURCES_MD_V2))

SOURCES_RST := $(wildcard ????-??-??.rst)
SLIDES_RST := $(patsubst %.rst,%.pdf,$(SOURCES_RST))
AUX_RST := $(patsubst %.rst,%.aux,$(SOURCES_RST))
LOG_RST := $(patsubst %.rst,%.log,$(SOURCES_RST))
SLIDES_HTML := $(patsubst %.rst,%.html,$(SOURCES_RST))
SLIDES_YAML := $(patsubst %.rst,%.yaml,$(SOURCES_RST))

AUX := $(AUX_MD) $(AUX_MD_V2) $(AUX_RST)
LOG := $(LOG_MD) $(LOG_MD_V2) $(LOG_RST) missfont.log

.PHONY: all clean

all: $(SLIDES_MD) $(SLIDES_MD_V2) $(SLIDES_YAML) $(SLIDES_RST) $(SLIDES_HTML)

%.pdf: %.md
	pandoc $(PANDOC_FLAGS) --toc -H header.tex $< -o $@

%.yaml: %.rst
	python3 mkmeta.py $<

%.pdf: %.rst
	pandoc $(PANDOC_FLAGS) $(PANDOC_FLAGS_BEAMER) --metadata-file=$(basename $<).yaml $< -o $@

%.html: %.rst
	pandoc $(PANDOC_FLAGS) --metadata-file=$(basename $<).yaml $< -o $@

clean:
	-rm -f $(SLIDES_MD) $(SLIDES_MD_V2) $(SLIDES_YAML) $(SLIDES_RST) $(SLIDES_HTML) $(AUX) $(LOG)

# The following command works with reST source + YAML metadata
# pandoc -t beamer -s --listings -H beameropt.tex --pdf-engine=xelatex --metadata-file=2019-01-10.yaml -o 2019-01-10.pdf 2019-01-10.rst
