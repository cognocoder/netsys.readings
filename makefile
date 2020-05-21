
SOURCE  = main
LATEXMK = latexmk

all: clean compile

compile:
	@"$(LATEXMK)" -pdf -synctex=1 \
		-xelatex -interaction=nonstopmode \
		-quiet \
		"$(SOURCE).tex"

clean:
	@find . -type f \( \
		-iname "*-blx.*" \
		-or -iname "*-converted-to.*" \
		-or -iname "*.*~" \
		-or -iname "*.acn" \
		-or -iname "*.acr" \
		-or -iname "*.aux" \
		-or -iname "*.backup" \
		-or -iname "*.bak" \
		-or -iname "*.bbl" \
		-or -iname "*.bcf" \
		-or -iname "*.blg" \
		-or -iname "*.brf" \
		-or -iname "*.cb" \
		-or -iname "*.cb2" \
		-or -iname "*.dvi" \
		-or -iname "*.fdb_latexmk" \
		-or -iname "*.fls" \
		-or -iname "*.fmt" \
		-or -iname "*.fot" \
		-or -iname "*.glg" \
		-or -iname "*.glo" \
		-or -iname "*.gls" \
		-or -iname "*.glsdefs" \
		-or -iname "*.idx" \
		-or -iname "*.ilg" \
		-or -iname "*.ind" \
		-or -iname "*.ist" \
		-or -iname "*.lo*" \
		-or -iname "*.nav" \
		-or -iname "*.out" \
		-or -iname "*.pdfsync" \
		-or -iname "*.pre" \
		-or -iname "*.ps" \
		-or -iname "*.run.xml" \
		-or -iname "*.sav" \
		-or -iname "*.snm" \
		-or -iname "*.synctex*" \
		-or -iname "*.toc" \
		-or -iname "*.vrb" \
		-or -iname "*.xdv" \
		-or -iname "*_temp.tex" \
		\) ! -path "./.git/*" -delete
