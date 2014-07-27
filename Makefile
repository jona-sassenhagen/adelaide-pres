pdf: adpres.pdf

adpres.pdf: adpres.md
	pandoc adpres.md -o adpres.pdf -s -t beamer
