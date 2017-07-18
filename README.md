# ВИСЕЛИЦА (game)
                                        
   Консольная игра ["Виселица"](https://ru.wikipedia.org/wiki/%D0%92%D0%B8%D1%81%D0%B5%D0%BB%D0%B8%D1%86%D0%B0_(%D0%B8%D0%B3%D1%80%D0%B0)) заключается в отгадывании слова которое загадывает программа. Слово нужно отгадывать по буквам.
 После каждой удачной попытки открывается угаданая буква, а после промаха дорисовывается элемент виселицы. Всего 
 дается семь попыток. После семи промахов программа сообщает о проиграше, а если слово отгадано, то о победе.
 
 ## Функционал игры
 
 1. Запуск программы осуществляется через файл viselica.rb с помощью ввода команды: ruby viselica.rb в директории файла.
 
 2. В файле game.rb находится основной функционал отвечающий за процес угадывания слова:
     * контроль за тем было ли загадано слово;
     * ввод новой буквы;
     * проверка буквы и добавление её в массив правильных или неправильных букв соответственно;
     * подсчет попыток (всего дается семь попыток для угадывания слова);
     * контроль статуса ВЫИГРАЛ/ПРОИГРАЛ.
 
 3. Файл result_printer.rb отвечает за вывод на экран изображения виселицы, загаданого слова, и статуса игры.
 
 4. Файл word_reader.rb считывает файл со словами и возвращает случайное.
 
 5. В папке image набор файлов с псевдографикой для изображения виселицы.
 
 6. В папке data файл со списком слов для отгадывания.
 
 7. Приложение нaписано на языке Ruby.
 
 8. Авторы приложения [Михаил Бутлицкий](https://github.com/aristofun),  [Вадим Венедиктов](https://github.com/installero),   соавтор [Melnykovych Roman](https://github.com/melnyk-r)
