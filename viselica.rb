current_path = "./" + File.dirname(__FILE__)

require current_path + "/game.rb"
require current_path + "/result_printer.rb"
require current_path + "/word_reader.rb"

printer = ResultPrinter.new

# Программа загадывает случайное слово из файла words.txt
reader = WordReader.new
slovo = reader.read_from_file(current_path + '/data/words.txt')

game = Game.new(slovo)

# Цикл игры контролирующий процес угадывания и поточный статус игры
while game.status == 0 do
  printer.print_status(game)
  game.ask_next_letter
end

# Вывод на экран статуса игры: выиграш/проиграш/оставшиеся попытки
printer.print_status(game)
