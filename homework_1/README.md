# Домашнее задание #1 по GitBash
## Часть 1: Terminal commands
1) Посмотреть где я - `pwd`
2) Создать папку - `mkdir test`
3) Зайти в папку - `cd test`
4) Создать 3 папки - `mkdir dir_1 dir_2 dir_3`
5) Зайти в любую папку - `cd dir_1`
6) Создать 5 файлов (3 txt, 2 json) - `touch one.txt two.txt three.txt one.json two.json`
7) Создать 3 папки - `mkdir d_1 d_2 d_3`
8. Вывести список содержимого папки - `ls -la`
9) Открыть любой txt файл - `vim one.txt `
10) написать туда что-нибудь, любой текст
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
11) сохранить и выйти - `ESC + :wq`
12) Выйти из папки на уровень выше - `cd ..`
13) переместить любые 2 файла, которые вы создали, в любую другую папку - `mv dir_1/{one.json, two.json} dir_2`
14) скопировать любые 2 файла, которые вы создали, в любую другую папку - `cp dir_1/{one.txt, two.txt} dir_2`
15) Найти файл по имени - `find . -name "one.txt"`
16) просмотреть содержимое в реальном времени (команда grep) изучите как она работает - `tail -f dir_1/one.txt | grep "star"`  
опция `-f` - вывод текста по мере обновления файла  
опция `-n 3` - вывод трёх последних строк файла  
команда `grep` - поиск по ключевому слову
17) вывести несколько первых строк из текстового файла - `head -n 3 dir_1/one.txt`
18) вывести несколько последних строк из текстового файла - `tail -n 3 dir_1/one.txt`
19) просмотреть содержимое длинного файла (команда less) изучите как она работает - `less dir_1/one.txt`
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
20) вывести дату и время - `date`
## Часть 2: Отправить http запрос на сервер
#### REQUEST: 
Отправка запроса на сервер с помощью команды `curl` и метода `-X GET`  
`curl -X GET 'http://162.55.220.72:5005/terminal-hw-request'`
#### RESPONSE: 
 Результат запроса - `404 Not Found`
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
Создание скрипта: `vim script.sh`

Начать редактировать - `I - Insert`

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
Завершить процесс редактирования + сохранить файл и выйти из режима редактированивая - `ESC + :wq`

Запуск скрипта: `bash script.sh`
