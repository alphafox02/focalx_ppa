#!/bin/bash

# Create Packages file
dpkg-scanpackages --multiversion . > Packages

# Compress Packages file
gzip -k -f Packages

# Create Release file
apt-ftparchive release . > Release

# Sign Release file with GPG
gpg --default-key cemaxecuter@protonmail.com -abs -o - Release > Release.gpg

# Clear sign Release file with GPG
gpg --default-key cemaxecuter@protonmail.com --clearsign -o - Release > InRelease

# Add all files to git staging area
git add -A

# Prompt for commit message
read -p "Enter commit message: " commit_message

# Commit changes with the entered message
git commit -m "$commit_message"


# Push changes to git repository
git push
