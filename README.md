# Meeting summary scripts

This repo provides the details to summarise meeting transcripts using ollama 
models run locally on you own computer.  

This readme shows the steps to use the pipeline within a linux shell environment.
It is possible to run this on Windows, however the syntax will vary.  

## Requirements  
### Install ollama  

Go to Ollamas website [ollama.com] [ollama.com](ollama.com) and download ollama
for your operating system.  

Once installed verify the installation and that ollama is running by going to [http://localhost:11434/](). It should say "Ollama is running".  

### Install a LLM  

At the time of writing one of the better LLMs available via ollama is Meta's llama3.2. 
Go to the 'models' section and serch for a model you wish to use.
This guide will take you through using [llama3.2](https://ollama.com/library/llama3.2)  

In your terminal or cmd prompt, run

```sh
ollama run llama3.2
```

This will download the model and start it running.  

You will then be greated by three greater than signs to show you llama3.2 is ready for a prompt.
Try asking it a question like "hello how are you today?".

exit discussion with the command `/bye`  

### Running meeting summary

```sh
ollama run llama3.2 "Ollama propt here (ie. summarise this meeting transcript into a list of ten discussion points)" < \
Input_meeting_transcript_file.vtt \
> meetingsummaryoutput.txt
```

The first input is the prompt to the LLM,  
then specify the meeting trascript file to input to the LLM,  
finally pipe that to a output file.  