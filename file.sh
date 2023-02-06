#!/bin/bash


    #Author : Utrains
    #Date : january 2023
    
## ---------- If statement and file   -----------------

# -----  check if the file exist with the filename ------------

if [ -f success ]
    then 
    echo "file already exist"
 else 
 touch success   
fi

