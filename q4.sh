#!/bin/bash
read -p "Enter parameters with format <file name> <beginning> <end>" FILE_NAME BEG END
head -n $END $FILE_NAME | tail -n $(($END - $BEG + 1))
