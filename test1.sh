
#!/bin/bash
echo "Телегин
Трофимов
Дорошок
Галактионова
Алексеева
Яблочков" > class1.txt
echo "Загора
Иванова
Симонов
Благодаров
Козлова
Турапова" > class2.txt
./script1.sh class1.txt class2.txt > result.txt
if [[ $(cat result.txt) == "В группах одинаковое количество студентов" ]]
 then
    echo "Тест 1 пройден"
else
    echo "Тест 1 не пройден"
fi

# проверка, что скрипт выдаёт правильный результат для файлов с разным количеством студентов
echo "Телегин
Трофимов
Дорошок
Галактионова
Алексеева
Яблочков" > class1.txt
echo "Загора
Иванова
Симонов
Благодаров
Козлова
Турапова
Волочкова" > class2.txt
./script1.sh class1.txt class2.txt > result.txt
if [[ $(cat result.txt) == "Количество студентов в группах не совпадает" ]]
then
    echo "Тест 2 пройден"
else
    echo "Тест 2 не пройден"
fi
