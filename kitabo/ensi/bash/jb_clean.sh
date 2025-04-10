#!/bin/bash

# Purpose: Copy key content folders into _build/html for final site packaging

# List of directories to include in the build
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

# Enable dotfile globbing so .gitignore, etc., are included
shopt -s dotglob nullglob

# Create target folders and copy contents (if any)
for d in "${dirs[@]}"; do
  src="$d"
  dest="_build/html/$d"

  echo "📂 Processing: $src → $dest"
  mkdir -p "$dest"

  files=("$src"/*)
  if [ ${#files[@]} -gt 0 ]; then
    cp -r "${files[@]}" "$dest/"
    echo "✅ Copied: ${#files[@]} item(s)"
  else
    echo "⚠️  Skipped: $src is empty"
  fi
done

# Clean up shell options
shopt -u dotglob nullglob

echo "🎯 Done."
