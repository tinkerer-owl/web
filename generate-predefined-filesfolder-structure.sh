#!/bin/bash

# Define the folder structure
folders=(
    "assets/css"
    "assets/js"
    "assets/img"
    "assets/img/responsive"
    "fonts"
    "pages"
    "components"
)

# Define the general files
general_files=(
    "assets/css/style.css"
    "assets/css/normalize.css"
    "assets/js/main.js"
    "pages/index.html"
    "pages/about.html"
    "pages/services.html"
    "pages/contact.html"
    "components/header.html"
    "components/footer.html"
    "components/navigation.html"
    "README.md"
)

# Create folders
for folder in "${folders[@]}"
do
    mkdir -p "$folder"
done

# Create general files
for file in "${general_files[@]}"
do
    touch "$file"
done

# Create responsive image files
responsive_img_folder="assets/img/responsive"
responsive_sizes=("lg" "md" "sm" "xs")
for size in "${responsive_sizes[@]}"
do
    touch "$responsive_img_folder/background-$size.jpg"
done

# Output success message
echo "Folder structure and general files created successfully."
