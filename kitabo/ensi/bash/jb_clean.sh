#!/bin/bash

# Summary: Copy select directories—including dotfiles—into _build/html/, handling edge cases.

# Enable safe globbing for hidden files and empty folders
shopt -s dotglob nullglob

# List of directories to copy
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

echo "🛠 Copying directories to _build/html"

# Loop through and copy
for d in "${dirs[@]}"; do
  src="./$d"
  dest="_build/html/$d"

  if [ -d "$src" ]; then
    mkdir -p "$dest"
    
    files=("$src"/*)  # includes hidden files now due to dotglob
    if [ ${#files[@]} -gt 0 ]; then
      cp -r "$src"/* "$dest/"
      echo "✅ Copied $d → $dest"
    else
      echo "⚠️  Skipped $d (empty)"
    fi
  else
    echo "❌ Missing source directory: $d"
  fi
done

# Restore globbing behavior
shopt -u dotglob nullglob

echo "🎯 Done."
