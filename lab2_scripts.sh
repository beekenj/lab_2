#!/bin/bash
# Authors : Jack Beeken & Rajesh Rajchal
# Date: 1/1/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
# Prompt user for input file name and regex search value
echo "Enter regex: "
read regEx
echo "Enter filename: "
read fileName

# grep $regEx $fileName

# Phone #s
# [0-9] any digits 3x-3x-4x
grep -c '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}' regex_practice.txt
# Emails
# alnum returns any alpha or digit
grep -c '[[:alnum:]+\.\_\-]*@[[:alnum:]+\.\_\-]*' regex_practice.txt
# 303s into file
# '>' saves results to file
grep '303\-[0-9]\{3\}\-[0-9]\{4\}' regex_practice.txt > phone_results.txt
# geocities emails
grep '[[:alnum:]+\.\_\-]*@geocities.com*' regex_practice.txt > email_results.txt
# regex command results to file
grep $1 regex_practice.txt > command_results.txt




