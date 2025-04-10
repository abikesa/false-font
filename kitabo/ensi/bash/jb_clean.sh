#!/bin/bash

# Define target directories

dirs=(
  pdfs
  figures
  media
  testbin
  nis
  myhtml
  dedication
  python
  ai
  r
  stata
  bash
  xml
  data
  aperitivo
  antipasto
  primo
  secondo
  contorno
  insalata
  formaggio-e-frutta
  dolce
  caffe
  digestivo
)

# Create directories under _build/html
for d in "${dirs[@]}"; do
  mkdir -p "_build/html/$d"
  if compgen -G "$d/*" > /dev/null; then
    cp -r "$d/"* "_build/html/$d/"
  fi
done


