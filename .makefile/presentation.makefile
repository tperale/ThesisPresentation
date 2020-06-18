presentation_TEX_FILES = $(shell find presentation.tex -name '*.tex' -or -name '*.sty' -or -name '*.cls' | grep -v '.\#' | sed -e 's/ /\\ /g')
presentation_BIB_FILES = $(shell find presentation.tex -name '*.bib' | grep -v '.\#' | sed -e 's/ /\\ /g')
presentation_BST_FILES = $(shell find presentation.tex -name '*.bst' | grep -v '.\#' | sed -e 's/ /\\ /g')
presentation_IMG_FILES = $(shell find presentation.tex -name '*.jpg' -or -name '*.png' -or -name '*.eps' -or -name '*.csv' | grep -v '.\#' | sed -e 's/ /\\ /g')
presentation_PDF_FILES = $(shell share/bin/depend presentation.tex)

presentation_ALL_FILES = $(presentation_TEX_FILES) $(presentation_IMG_FILES) $(presentation_BIB_FILES) $(presentation_BST_FILES) $(presentation_PDF_FILES)

presentation.pdf: $(presentation_ALL_FILES)
	 share/bin/latex.route presentation.tex