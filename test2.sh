#!/bin/bash
./script2.sh file1.txt file2.txt > result.txt
if [ $(cat result.txt) == "В группах нет повторяющихся студентов" ]
 then
    echo "Тест 1 пройден"
else
    echo "Тест 1 не пройден"
fi

./script2.sh file1.txt file2.txt > result.txt
if [ $(cat result.txt) == "В группах студенты повторяются" ]
 then
    echo "Тест 2 пройден"
else
    echo "Тест 2 не пройден"
fi
