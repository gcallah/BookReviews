# prod: %.docx github

%.docx: %.md
	pandoc -o $@ -f markdown -t docx $*.md

github:
	-git commit -a
	git push origin master
