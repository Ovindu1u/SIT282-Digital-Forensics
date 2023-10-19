#!/bin/bash

#Declare files
input_file="image_files.txt"
output_file="scan_output.txt"

#Clear output file
> "$output_file"

#Iterate through each line in input_file
while IFS= read -r image_path; do

	#Write the path of the current image to output_file
	echo "Path: $image_path" >> "$output_file"
	
	#run tesseract on the image and set the output to scan
	scan=$(tesseract "$image_path" -)
	
	#Write the output to output_file
	echo "$scan" >> "$output_file"

done < "$input_file"
