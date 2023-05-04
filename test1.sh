
#!/bin/bash
./script1.sh class1.txt class2.txt > result.txt
if [[ $(cat result.txt) == "В группах одинаковое количество студентов" ]]
 then
    echo "Тест 1 пройден"
else
    echo "Тест 1 не пройден"
fi

# проверка, что скрипт выдаёт правильный результат для файлов с разным количеством студентов

./script1.sh class1.txt class2.txt > result.txt
if [[ $(cat result.txt) == "Количество студентов в группах не совпадает" ]]
then
    echo "Тест 2 пройден"
else
    echo "Тест 2 не пройден"
fi