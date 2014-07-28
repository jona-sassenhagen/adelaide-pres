pdf: adpres.pdf

adpres.pdf: adpres.md
ifndef LEGACY
	pandoc -s -t beamer adpres.md -o adpres.pdf  
else
	adpres.pdf: adpres.md
		pandoc -s -t beamer --template=my.beamer adpres.md -o adpres.pdf  
endif
	
clean: 
	rm -rf adpres.pdf
