# Assignment2
vim understanding_quotes.sh
#!/usr/bin/bash
echo $USER
VARIABLE="I am on $USER"
echo $USER # prints VARIABLE
:wq
chmod 755 understanding_quotes.sh
./understanding_quotes.sh
vim processes.sh
#!/usr/bin/bash
myvar=$( ps -ef | grep $USER)
echo $myvar
:wq
chmod 755 processes.sh
./processes.sh
vim addormultiply.sh
#!/usr/bin/bash
read -p "Enter first number: " num1
read -p "Enter second number: " num2
sum=$(( $num1 + $num2 ))
sum=$sum
echo $sum
b=20
b=$b
  if [ "$sum" -gt "$b" ];
then
   sum=$(( $num1 * $num2 ));
echo "${sum}sum";
  else
   sum=$(( $num1 + $num2 ))
echo "${sum}sum";
  fi
  :wq
chmod 755 addormultiply.sh
./addormultiply.sh
# Part 3 of HMWK 3 "Generating a word cloud"
ssh trgn.usc.edu
pw for maiacorpuz@trgn.usc.edu
cd bin
ls
vim generate_cloud.sh
#!/usr/bin/bash 
if [ "$1" == "--terms term1 term2 term3" ]; then 
echo > generate_cloud.txt 
elif [ "$1" > "generate_cloud.txt" ]; then 
   wordcloud_cli --text generate_cloud.txt --imagefile generate_cloud.png; 
elif [ "$1" = "generate_cloud.png" ]; then 
   rsync -avz maiacorpuz@trgn.usc.edu:~/generate_cloud.png ~/Desktop 
elif [ -z "$1" ]; then 
   wordcloud_cli --help; 
 
else 
exit 
fi
:wq
ls
generate_cloud.sh
usage: wordcloud_cli [-h] [--text file] [--regexp regexp] [--stopwords file]
                     [--imagefile file] [--fontfile path] [--mask file]
                     [--colormask file] [--contour_width width]
                     [--contour_color color] [--relative_scaling rs]
                     [--margin width] [--width width] [--height height]
                     [--color color] [--background color] [--no_collocations]
                     [--version]

A simple command line interface for wordcloud module.

optional arguments:
  -h, --help            show this help message and exit
  --text file           specify file of words to build the word cloud
                        (default: stdin)
  --regexp regexp       override the regular expression defining what
                        constitutes a word
  --stopwords file      specify file of stopwords (containing one word per
                        line) to remove from the given text after parsing
  --imagefile file      file the completed PNG image should be written to
                        (default: stdout)
  --fontfile path       path to font file you wish to use (default:
                        DroidSansMono)
  --mask file           mask to use for the image form
  --colormask file      color mask to use for image coloring
  --contour_width width
                        if greater than 0, draw mask contour (default: 0)
  --contour_color color
                        use given color as mask contour color - accepts any
                        value from PIL.ImageColor.getcolor
  --relative_scaling rs
                        scaling of words by frequency (0 - 1)
  --margin width        spacing to leave around words
  --width width         define output image width
  --height height       define output image height
  --color color         use given color as coloring for the image - accepts
                        any value from PIL.ImageColor.getcolor
  --background color    use given color as background color for the image -
                        accepts any value from PIL.ImageColor.getcolor
  --no_collocations     do not add collocations (bigrams) to word cloud
                        (default: add unigrams and bigrams)
  --version             show program's version number and exit
  generate_cloud.sh --terms term1 term2 term3
  Traceback (most recent call last):
  File "/home/maiacorpuz/.local/bin/wordcloud_cli", line 10, in <module>
    sys.exit(main())
  File "/home/maiacorpuz/.local/lib/python2.7/site-packages/wordcloud/__main__.py", line 33, in main
    wordcloud_cli_main(*wordcloud_cli_parse_args(sys.argv[1:]))
  File "/home/maiacorpuz/.local/lib/python2.7/site-packages/wordcloud/wordcloud_cli.py", line 89, in main
    wordcloud.generate(text)
  File "/home/maiacorpuz/.local/lib/python2.7/site-packages/wordcloud/wordcloud.py", line 605, in generate
    return self.generate_from_text(text)
  File "/home/maiacorpuz/.local/lib/python2.7/site-packages/wordcloud/wordcloud.py", line 587, in generate_from_text
    self.generate_from_frequencies(words)
  File "/home/maiacorpuz/.local/lib/python2.7/site-packages/wordcloud/wordcloud.py", line 383, in generate_from_frequencies
    "got %d." % len(frequencies))
ValueError: We need at least 1 word to plot a word cloud, got 0.
