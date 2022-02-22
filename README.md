# Curriculum-Vitae
My resume in LaTeX. 
Helps manage multilanguage resume using macros so the content is the same in all languages.

You can download the PDF in the release [here](https://github.com/xgroleau/Curriculum-Vitae/releases/tag/latest)

## Building

### Using Nix
You can build the french and english resume using

``` shell
nix build
```

### Manually

Either by installing the required texlive packages or using `nix develop` to get the dependencies.

Then to build you can simply invoke `latexmk`.

``` sh
latexmk -pdf resume_en.tex resumen_fr.tex
```
