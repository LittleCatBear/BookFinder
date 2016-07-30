# Question4
A simple command line ruby application to retrieve books from Google Books API

## Prerequis
Ruby installed on the machine. Require ruby version > 2 (used ruby 2.2.2)

##How to install

 1. Download the source file bookapp.rb in a folder of your choice
 2. Open a terminal and navigate to your folder containing the file bookapp.rb previously downloaded
 3. In your termminal, type `chmod 755 bookapp.rb`, then enter
 4. Then type `mv bookapp.rb bookapp`
 5. Then type `mkdir -p /usr/local/bin/`
 6. And finally, type `ln -s $PWD/bookapp /usr/local/bin/`
 
##How to use
 
 In your terminal, type `bookapp book_title`
 

Example: `bookapp alice in wonderland`

( Rescue option: if the installation didn't work, check you have a sufficient ruby version (type `ruby -v` in your terminal), and then type `ruby bookapp.rb alice in wonderland` in the folder containing the source file )

Will retrieve the first 10 results:

`1: Alice's Adventures in Wonderland`

`2: Alice's Adventures in Wonderland`

`3: Alice's adventures in Wonderland`

`4: Alice's Adventures in Wonderland`

`5: Alice in Wonderland Coloring Book`

`6: Alice in Wonderland`

`7: Alice in Wonderland Mini Jigsaw Book`

`8: Alice in Wonderland / Alice Im Wunderland`

`9: Alice's Adventures in Wonderland`

`10: Alice in Wonderland & Through the Looking Glass`

 