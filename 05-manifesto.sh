#!/bin/bash
# Author: Devansh  (24MEI10084)
# Purpose: Use 'read -p' to ask 3 interactive questions, construct a paragraph injecting the answers, and append it to a .txt file named after the user.

echo "================================================================================"
echo "                   Git AUDIT - MANIFESTO GENERATOR                 "
echo "================================================================================"

read -p "What is your name? " name
read -p "What is your favorite open source project? " project
read -p "What do you think is the most important aspect of open source software? " aspect

echo "As $name, I believe that $project is a great example of the power of open source software. I think that the most important aspect of open source software is $aspect. I will strive to contribute to the open source community and promote the values of freedom, collaboration, and innovation."

echo "As $name, I believe that $project is a great example of the power of open source software. I think that the most important aspect of open source software is $aspect. I will strive to contribute to the open source community and promote the values of freedom, collaboration, and innovation." > $(whoami).txt

echo "Manifesto saved to $(whoami).txt"

echo "================================================================================"