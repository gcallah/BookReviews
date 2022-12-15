# make a Word doc from markdown:
%.docx: %.md
	pandoc -o $@ -f markdown -t docx $*.md

github:
	-git commit -a
	git push origin master
