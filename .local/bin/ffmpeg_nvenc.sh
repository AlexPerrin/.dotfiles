#!/bin/bash

# Check if at least one argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <input_file> [bitrate]"
    exit 1
fi

# Input file provided as the first argument
input_file="$1"

# Set default bitrate if not provided
bitrate="${2:-5000}"  # Default bitrate is 5000 Kbps

# Output file (assuming same directory and replacing the extension)
output_file="${input_file%.*}_output.mp4"

# Execute ffmpeg command
ffmpeg -i "$input_file" -c:v h264_nvenc -b:v "${bitrate}K" "$output_file"

echo "Conversion complete. Output saved as $output_file"
