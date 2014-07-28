python = python
refs = refs.bib
library ?= /path/to/library
refs = adpres.bib

pdf: adpres.pdf

adpres.pdf: adpres.md
ifndef LEGACY
	pandoc -s -t beamer --bibliography=adpres.bib adpres.md -o adpres.pdf  
else
	adpres.pdf: adpres.md
		pandoc -s -t beamer --template=my.beamer --bibliography=adpres.bib adpres.md -o adpres.pdf  
endif
	
clean: 
	rm -rf adpres.pdf
	
$(refs): bib.keys
	$(python) extractbib.py bib.keys $(library) $(refs)

bib.keys: adpres.md
	grep @[-:_a-zA-Z0-9]* adpres.md -oh --color=never | sort  | uniq -u | sed 's/@//g' > bib.keys
