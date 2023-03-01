#!/bin/bash

# Path to the local nuclei templates directory
NUCLEI_TEMPLATES_DIR="/Users/prajeshyeotikar/nuclei-templates"
if [[ $# -eq 0 ]] ; then
    echo 'Please provide the target domain as the command-line argument'
    exit 1
fi
TARGET_DOMAIN=$1
# Create a directory to store the results
mkdir nuclei-results 

# Loop through all templates in the directory and run them
for template in $(find "$NUCLEI_TEMPLATES_DIR" -type f -name "*.yaml"); do
    # Get the name of the template file
    template_name=$(basename "$template")
    # Get the relative path of the template file
    template_path=$(dirname "${template}")
    # Run the template against a target URL and save the results to a file
    nuclei -t "$template" -u "https://$TARGET_DOMAIN" -o "nuclei-results/$template_name.txt"
done
