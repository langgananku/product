#!/bin/bash

# Folder input & output
INPUT_DIR="./input-banner"
OUTPUT_DIR="./output-banner"

# Ukuran resize (misal: 800x600)
WIDTH=800

# Buat folder output jika belum ada
mkdir -p "$OUTPUT_DIR"

# Proses semua file gambar
for IMG in "$INPUT_DIR"/*.{jpg,jpeg,png}; do
  if [ -f "$IMG" ]; then
    FILENAME=$(basename "$IMG")
    echo "🔄 Resize: $FILENAME → ${WIDTH}x${HEIGHT}"
    convert "$IMG" -resize ${WIDTH} "$OUTPUT_DIR/$FILENAME"
  fi
done

echo "✅ Selesai! Gambar disimpan di folder: $OUTPUT_DIR"
