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

# считает кол-во строк в файлах
c1=$(cat $class1 | wc -l)
c2=$(cat $class2 | wc -l)

# сравниваем кол-во строк в файлах
if [[ $c1 == $c2 ]]
then
    echo "В группах одинаковое количество студентов"
else
    echo "Количество студентов в группах не совпадает"
fi