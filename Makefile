all: exploiting-spack-for-mpich-ci.pdf exploiting-spack-for-mpich-ci.handout.pdf

exploiting-spack-for-mpich-ci.pdf: exploiting-spack-for-mpich-ci.tex

exploiting-spack-for-mpich-ci.handout.pdf: exploiting-spack-for-mpich-ci.handout.tex

exploiting-spack-for-mpich-ci.handout.tex: exploiting-spack-for-mpich-ci.tex
	sed '1s/\documentclass{beamer}/\documentclass[handout]{beamer}/' $^ > $@

%.pdf: %.tex
	latexmk -pdf -shell-escape -use-make $^

clean:
	latexmk -CA
	rm -f exploiting-spack-for-mpich-ci.handout.tex *.snm *.nav *.vrb *.pyg
	rm -rf _minted-*/ svg-inkscape/

.PHONY: all clean
