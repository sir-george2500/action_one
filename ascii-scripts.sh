#!/bin/bash

# generate_ascii_artwork.sh
# Purpose: Mimic GitHub Actions workflow to generate ASCII art with cowsay

set -e  # Exit on any error

echo "🔄 Updating package lists and installing cowsay..."
sudo apt update && sudo apt install cowsay -y

echo "🔥 Generating ASCII art using cowsay (dragon)..."
cowsay -f dragon "Run for cover, I am a Dragon" >> dragon.txt

echo "🔍 Verifying that the message was written to dragon.txt..."
grep "Run for cover" dragon.txt

echo "📄 Displaying contents of dragon.txt:"
cat dragon.txt

echo "📁 Listing current directory contents:"
ls -ltra
