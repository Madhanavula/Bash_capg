#!/bin/bash
#for displaying hello on screen 
echo "hello"

#asign value to variable
WORD='shell_scripting'

#for diaplayin the word

echo "$WORD"
###echo '$WORD' in singe quotes it wont display 'shell_scripting'

echo "hi im learning $WORD"
# append text to variable
echo "hi im learning ${WORD}s"

#appending two variables
FUN='is fun'
echo "hey ${WORD} ${FUN}"

#reassigning the variable
FUN='is not fun'
echo "hey ${WORD} ${FUN}"

