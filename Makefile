python = python
refs = refs.bib
library ?= /path/to/library
refs = adpres.bib

pdf: adpres.pdf

mem: mem.pdf

%.pdf: %.md
	pandoc -s -t beamer $(if $(LEGACY), --template=my.beamer) --bibliography=$*.bib $*.md -o $*.pdf  --slide-level=2

%.md: %.Rmd 
	echo 'knitr::knit("$*.Rmd")' | R --vanilla
	
clean: 
	rm -rf adpres.pdf
	
$(refs): bib.keys
	$(python) extractbib.py bib.keys $(library) $(refs)

bib.keys: adpres.md
	grep @[-:_a-zA-Z0-9]* adpres.md -oh --color=never | sort  | uniq -u | sed 's/@//g' > bib.keys
