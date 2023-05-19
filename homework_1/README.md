# Домашнее задание #1 по GitBash
## Часть 1: Terminal commands
1. Посмотреть где я - `pwd`
2. Создать папку - `mkdir test`
3. Зайти в папку - `cd test`
4. Создать 3 папки - `mkdir dir_1 dir_2 dir_3`
5. Зайти в любую папку - `cd dir_1`
6. Создать 5 файлов (3 txt, 2 json) - `touch one.txt two.txt three.txt one.json two.json`
7. Создать 3 папки - `mkdir d_1 d_2 d_3`
8. Вывести список содержимого папки - `ls -la`
9. Открыть любой txt файл - `vim one.txt`

_Vim — терминальный текстовый редактор._

10. Написать туда что-нибудь, любой текст:
```
Sun of the sleepless! Melancholy star!
Whose tearful beam glows tremulously far,
That show’st the darkness thou canst not dispel,
How like art thou to joy remember’d well!

So gleams the past, the light of other days,
Which shines, but warms not with its powerless rays;
A night-beam Sorrow watcheth to behold,
Distinct, but distant — clear, but oh, how cold!
```
11. Сохранить и выйти - `ESC + :wq`
12. Выйти из папки на уровень выше - `cd ..`
13. Переместить любые 2 файла, которые вы создали, в любую другую папку - `mv dir_1/{one.json, two.json} dir_2`
14. Скопировать любые 2 файла, которые вы создали, в любую другую папку - `cp dir_1/{one.txt, two.txt} dir_2`
15. Найти файл по имени - `find . -name "one.txt"`

_После самой команды_ `find` _пишется точный путь каталога, в котором нужно что-то найти. В примере указана `точка`, что говорит о поиске в текущей папке. Параметр `-name` указывает на поиск по наименованию. В конце обязательно указывается непосредственно имя. Т.е. мы ищем текстовый файл под названием "one.txt" в текущей папке._

16. Просмотреть содержимое в реальном времени (команда grep) изучите как она работает - `tail -f dir_1/one.txt | grep 'star'`  

_Опция_ `tail -f` - _вывод текста по мере обновления файла_  
_Опция_ `tail -n 3` - _вывод трёх последних строк файла_  
_Команда_ `grep` - _поиск по ключевому слову_

17. Вывести несколько первых строк из текстового файла - `head -n 3 dir_1/one.txt`
18. Вывести несколько последних строк из текстового файла - `tail -n 3 dir_1/one.txt`
19. Просмотреть содержимое длинного файла (команда less), изучите как она работает - `less dir_1/one.txt`
```
Down Arrow, Enter, e, j	- На одну строку вперед
Up Arrow, y, k	- На одну строку назад
Space bar, Page Down - На одну страницу вперед
Page Up, b - На одну страницу назад
Right Arrow - Прокрутить вправо
Left Arrow - Прокрутить влево
Home, g - Перейти к началу файла
End, G - Перейти в конец файла
/[string] - Поиск указанной строки вперед
?[string] - Поиск указанной строки в обратном направлении
n - Следующее совпадение во время поиска
N - Предыдущее совпадение во время поиска
q - Выход
```
20. Вывести дату и время - `date`
```
user@DESKTOP MINGW64 /Course
$ date
Sat May 20 03:26:49 RTZST 2023
```
## Часть 2: Отправить HTTP запрос на сервер
#### REQUEST: 
_Отправка запроса на сервер с помощью команды_ `curl` _и метода_ `-X GET`  
`curl -X GET 'http://162.55.220.72:5005/terminal-hw-request'`
#### RESPONSE: 
_Результат запроса_ - `404 Not Found`
```
% Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:--  0:00:01 --:--:--     0curl: (6) Could not resolve host: X
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   232  100   232    0     0   1468      0 --:--:-- --:--:-- --:--:--  1477<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<title>404 Not Found</title>
<h1>Not Found</h1>
<p>The requested URL was not found on the server. If you entered the URL manually please check your spelling and try again.</p>
```
## Часть 3: Написать скрипт, который выполнит автоматически пункты 3, 4, 5, 6, 7, 8, 13
_Создание скрипта:_ `vim script.sh`

_Начать редактировать_ - `I - Insert`

```
#!/bin/bash
cd homework
mkdir dir_1 dir_2 dir_3
cd dir_1
touch 1.txt 2.txt 3.txt 1.json 2.json
mkdir dd_1 dd_2 dd_3
ls -la
mv {1.txt,2.txt} dir_2
```
_Завершить процесс редактирования + сохранить файл и выйти из режима редактированивая_ - `ESC + :wq`

_Запуск скрипта:_ `bash script.sh`
