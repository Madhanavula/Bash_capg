#!/bin/bash

echo "choose one option below"
echo

echo "1. display all hidden files"
echo "2. display date"
echo "3. display working directory"

echo

	read choice
	case $choice in

1) ls-l;;
2) date;;
3) pwd;;
*) echo " invalid choice - bye"

esac
