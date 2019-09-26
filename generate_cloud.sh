#!/usr/bin/bash

if [ $1=='--terms' ]; then
   TERM=$2''$3''$4
   echo $TERM
   esearch -db pubmed -query "$TERM" | efetch -format abstract > generate_cloud.txt      
   wordcloud_cli --text generate_cloud.txt --imagefile generate_cloud.png;
elif [ -z "$1" ]; then
   wordcloud_cli --help;

else         
exit
fi
