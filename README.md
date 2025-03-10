<h1 align=center>@nferhat's resume</h1>

The source files are written in LateX, and needed certificates are embedded into the result PDF
file directly with the `navigator` package.

## Building

```sh
git clone https://github.com/nferhat/resume && cd resume
# If you have direnv with nix-direnv, you should not need this.
# Otherwise, enable flakes on your system.
#
# WARN: This will download a lot of packages, since the default build environment
# uses the scheme-full texlive bundle, totaling about 5gb of installed files!
nix develop

# Build
texi2pdf ./src/resume.tex
# Open
xdg-open ./resume.pdf
```
