How To Use run_analysis.R
========================================================

#Dependencies
This R script depends on the following liraries: 
- plyr
- reshape2

#Execution Instruction
Obtain a data file:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Unzip archive.

The woring directory must be the directory you unzip the archive into. Specifically you should see a directory "UCI HAR Dataset" in the working directory.

To execute try:
>Rscript ./run_analysis.R 

#Output
A file will be generated called "tidy.txt" that contains the results in a tidy format style. See CODEBOOK.md for details.
