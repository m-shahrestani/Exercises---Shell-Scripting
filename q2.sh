#!/bin/bash
echo "enter two values and operation with format below :"
echo "<val1> <operation> <val2>"
echo "operations : / - + *"
read VAL1 OPERATION VAL2
case $OPERATION in 
	"+")
		SUM=$(($VAL1 + $VAL2))
		echo "$VAL1 + $VAL2 = $SUM"
		;;
	"-")
        	MINUS=$(($VAL1 - $VAL2))
        	echo "$VAL1 - $VAL2 = $MINUS"
        	;;
        "/")
        	DIV=$(($VAL1 / $VAL2))
        	echo "$VAL1 / $VAL2 = $DIV"
        	;;
        "*") 
        	MULT=$(($VAL1 * $VAL2))
        	echo "$VAL1 * $VAL2 = $MULT"
        	;;   
        *)
        	echo "Not defined patern"
        	;;
esac
