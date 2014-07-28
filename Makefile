pdf: adpres.pdf

adpres.pdf: adpres.md
	pandoc -s -t beamer -o adpres.pdf adpres.md  
	
clean: 
	rm -rf adpres.pdf
