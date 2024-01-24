
svgs = example1.svg example2.svg example3.svg GraphvizAndPython.slides.html stack1.svg
all: $(svgs)

clean:
	rm *.gv *.gv.pdf

%.svg: %.dot
	dot -Tsvg $< > $@

slides: GraphvizAndPython.ipynb
	jupyter nbconvert  --to slides GraphvizAndPython.ipynb