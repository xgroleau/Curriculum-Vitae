(TeX-add-style-hook
 "xavier_en"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "letterpaper" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fullpage" "empty") ("color" "usenames" "dvipsnames") ("hyperref" "hidelinks") ("babel" "english" "french") ("FiraSans" "sfdefault")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "glyphtounicode"
    "article"
    "art11"
    "latexsym"
    "fullpage"
    "titlesec"
    "marvosym"
    "color"
    "verbatim"
    "enumitem"
    "hyperref"
    "fancyhdr"
    "babel"
    "ifthen"
    "tabularx"
    "FiraSans")
   (TeX-add-symbols
    '("subsubsectionlang" 2)
    '("subsectionlang" 2)
    '("sectionlang" 2)
    '("lang" 2)
    '("langif" 3)
    '("setdoclang" 2)
    '("resumeSubItem" 1)
    '("resumeProjectHeading" 2)
    '("resumeSubSubheading" 2)
    '("resumeSubheading" 4)
    '("resumeItem" 1)
    "resumeSubHeadingListStart"
    "resumeSubHeadingListEnd"
    "resumeItemListStart"
    "resumeItemListEnd"
    "doclang"
    "doclangshort"))
 :latex)

