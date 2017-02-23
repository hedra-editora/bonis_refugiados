#versão  Ter Out 20 12:55:23 BRST 2015 :r !date

LIVRO = REFUGIADOS

all:
	latexmk -xelatex -interaction=nonstopmode LIVRO.tex
	cp LIVRO.pdf $(LIVRO).pdf
	evince $(LIVRO).pdf
teste:
	xelatex LIVRO.tex
	xelatex LIVRO.tex
erros:
	-grep --color=auto "LaTeX Error" LIVRO.log
	-grep --color=auto -A 3 "Undefined" LIVRO.log
copy: 
	-cp ../templates/baruch/LIVRO.tex .
	-cp ../templates/baruch/INPUTS.tex .
	-cp ../templates/baruch/.gitignore .
	-cp ~/texmf/tex/fichatecnica.sty .
texrepair:
	-cp ~/texmf/tex/texrepair.sh .
isbn:
	google-chrome http://redmine.hedra.com.br/projects/producaoeditorial/wiki/ISBNs    
entrega:
	cp $(LIVRO).pdf ~/Dropbox/ARQUIVOS_GERAIS/
prol:
	echo "LOGIN: Jorge Sallum SENHA: 1230123"
	google-chrome insite.prolgrafica.com.br 
pdftk:
	-echo "REMOVE PAGES: pdftk in.pdf cat 1-12 14-end output out1.pdf"
deep-clean:
	-rm *.sty
	-rm *.cls
clean:
	-rm *aux *~ *log *tui *toc *.4ct *.4tc *.html *.css *.dvi *.epub *.lg *.ncx *.xref *.tmp *.idv *.opf *.fls *_latexmk LIVRO.pdf $(LIVRO).pdf
