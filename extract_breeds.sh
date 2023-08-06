#!/bin/bash 

#check if jq installed 
if ! command -v jq & /dev/null; then 
	echo "jq is not installed. Please install it first."
	exit 1
fi

#input JSON FILE 
input_file="catfacts.json"

#extract and print breed types using jq
jq -r '.[].breed' "$input_file"

