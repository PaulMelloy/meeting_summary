#!/bin/bash
# OLLAMA_PATH="/usr/local/bin/ollama"

echo "please enter input filename"
read in_filename
echo "please enter output filename"
read out_filename

#function sumfile() {
#  python -m vttformatter --input in_filename --output out_filename --text-format markdown
#  python -m ollymagenti.text_summarizer --text_file /path/to/your/file.txt --prompt "Summarize this file for me please" --text-format markdown
#}


find . -name "$in_filename" | egrep '.*'

if [ "$?" -ne 0 ] 
then
    echo "file does not exist"
else
    sumfile in_filename 
fi


# Extract the text from the VTT file using vtt2text
echo "$in_filename" | $OLLAMA_PATH/vtt2text -f plain_text > "$out_filename"

# Summarize the extracted text using summify
summarify $OUTPUT_TEXT_FILE -s 5