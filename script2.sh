#!/bin/bash
if [[ ! -n $1 && ! -n $2 ]]
then
    echo "Недостаточно аргументов"
    exit 1
elif [[ ! -f $1 && ! -f $2 ]]
then
    echo "Аргумент(-ы) не являет(-ют)ся файлом(-ами)"
    exit 1
fi

class1=$1
class2=$2


simple_names1=$(cat $class1 | sort)
simple_names2=$(cat $class2 | sort)
line_last1="/"
line_last=2"/"

for line1 in $simple_names1
do
    if [[ $line1 == $line_last1 ]]
    then
        echo "Найдены повторяющиеся студенты в группах"
        exit 2
    fi
    line_last1=$line1
done

for line2 in $simple_names2
do
    if [[ $line2 == $line_last2 ]]
    then
        echo "Найдены повторяющиеся студенты в группах"
        exit 2
    fi
    line_last2=$line2
done

echo "В группах нет повторяющихся студентов"
