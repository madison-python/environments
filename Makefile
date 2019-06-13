slides.pdf: slides.md
	pandoc -f markdown -t beamer -V theme=metropolis -o $@ $<