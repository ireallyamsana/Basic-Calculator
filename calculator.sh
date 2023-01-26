#!/bin/bash

function func() {
    echo "Usage - ./calculator.sh value1 operator value2"
    echo "where,"
    echo "value1: integer numeric value"
    echo "value2: integer numeric value"
    echo "operator: one of +,-,/,x"
}

if [ $# -ne 3 ]; then 
    func

    exit 0
fi

leftInt=$1
op=$2
rightInt=$3

if [ "$op" == "*" ]; then
    func

elif [ "$op" == "+" ]; then 
    echo $[ $leftInt + $rightInt ]

elif [ "$op" == "-" ]; then 
    echo $[ $leftInt - $rightInt ]

elif [ "$op" == "x" ]; then 
    echo $[ $leftInt * $rightInt ]

elif [ "$op" == "/" ]; then 
    if [ $rightInt -eq 0 ]; then 
        echo "Division-by-zero Error!"
        exit 0
    else
    echo $[ $leftInt / $rightInt ]
    fi
fi