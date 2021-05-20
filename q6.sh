#!/bin/bash
echo "enter two values and operation with format below :"
echo "<val1> <operation> <val2>"
echo "operations : / - + *"
read VAL1 OPERATION VAL2
case $OPERATION in 
	"+")
		SUM=$(echo "scale=3;$VAL1 + $VAL2" | bc)
		echo "$VAL1 + $VAL2 = $SUM"
		;;
	"-")
        	MINUS=$(echo "scale=3;$VAL1 - $VAL2" | bc)
        	echo "$VAL1 - $VAL2 = $MINUS"
        	;;
        "/")
        	DIV=$(echo "scale=3;$VAL1 / $VAL2" | bc)
        	echo "$VAL1 / $VAL2 = $DIV"
        	;;
        "*") 
        	MULT=$(echo "scale=3;$VAL1 * $VAL2" | bc)
        	echo "$VAL1 * $VAL2 = $MULT"
        	;;   
        *)
        	echo "Not defined patern"
        	;;
esac
