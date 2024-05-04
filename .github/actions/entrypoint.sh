#!/bin/bash

# cf. https://qiita.com/keitean/items/83c7d0d6221ec1b9c63c
set -eux

# build pdf
latexmk -C
latexmk /app/main.tex
latexmk -c
