
svgs = example1.svg example2.svg example3.svg GraphvizAndPython.slides.html stack1.svg
all: $(svgs)

%.svg: %.dot
	dot -Tsvg $< > $@

GraphvizAndPython.slides.html: GraphvizAndPython.ipynb
	jupyter nbconvert  --to slides GraphvizAndPython.ipynb