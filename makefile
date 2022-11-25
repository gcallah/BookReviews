%.docx: %.md
	pandoc -o $@ -f markdown -t docx $*.md

prod:
	-git commit -a
	git push origin master
