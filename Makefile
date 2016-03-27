pdf:
	pandoc --no-tex-ligatures --latex-engine xelatex \
	--template template-plain.tex --bibliography bib/bigphon.bib \
	--csl bib/ieee-mod.csl --output proposal.pdf bigphon-abstract.md
