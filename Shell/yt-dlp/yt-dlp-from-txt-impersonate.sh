#!/bin/bash

# yt-dlp-from-txt-impersonate.sh
# Purpose: Download media files from URLs listed in a text file using yt-dlp while avoiding bot detection

# Configuration variables
# Text file containing one URL per line
URL_FILE="/path/to/txt/file"

# Extract the base name from the URL file (without the .txt extension)
BASE_NAME=$(basename "$URL_FILE" .txt)

# Define the target directory for downloaded files using the base name
OUTPUT_DIR="/path/to/target/directory/$BASE_NAME"

# Ensure the output directory exists before proceeding
mkdir -p "$OUTPUT_DIR"

# Process each URL from the input file
while IFS= read -r url; do
  # Download media using yt-dlp
  # -o specifies the output file template
  # %(ext)s will be replaced by the file's extension (e.g. mp4, mkv)
  # --downloader ffmpeg and --hls-use-mpegts are kept from original script
  # ADDED: --extractor-args "generic:impersonate" to bypass bot detection (e.g. Cloudflare)
  echo "Attempting to download: $url" # Optional: Add some logging
  yt-dlp \
      --downloader ffmpeg \
      --hls-use-mpegts \
      --extractor-args "generic:impersonate" \
      -o "$OUTPUT_DIR/$BASE_NAME.%(ext)s" \
      "$url"
  # Optional: Check exit status
  if [ $? -ne 0 ]; then
      echo "WARNING: yt-dlp failed for URL: $url"
  fi
  echo "----------------------------------------" # Separator
done < "$URL_FILE"

echo "Script finished."
