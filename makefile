%.docx: %.md
	pandoc -o $@ -f markdown -t docx $*.md
