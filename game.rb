class Game
  def initialize(slovo)
    @letters = get_letters(slovo)

    # Счетчик ошибок
    @errors = 0

    # Массивы правильных и неправильных слов
    @good_letters = []
    @bad_letters = []

    # Счетчик контролирующий конец игры(выиграл/проиграл)
    @status = 0
  end

  def get_letters(slovo)
    if (slovo == nil || slovo == "")
      abort "Вы не ввели слово для игры"
    end
    return slovo.split("")
  end

  # 1. Спросить у игрока букву с консоли
  # 2. Проверить результат
  def ask_next_letter
    puts "\n Веедите следующую букву"

    letter = ""
    while letter == "" do
      letter = STDIN.gets.chomp.downcase
    end

    next_step(letter)
  end

  # Проверка статуса
  # Добаление буквы в массив правильных и ошибочных букв
  def next_step(bukva)
    if @status == -1 || @status == 1
      return
    end

    if @good_letters.include?(bukva) || @bad_letters.include?(bukva)
      return
    end

    # Участок кода проверяющий вуквы её/ий как одинаковые
    # Если в массиве "letters" есть введённая пользователем буква или
    # введённая буква является "е" и в массиве "letters" содержится "ё" или
    # введённая буква является "ё" и в массиве "letters" содержится "е"
    # Аналогично для букв "и", "й"
    if letters.include?(bukva) ||
        (bukva == "е" && letters.include?("ё")) ||
        (bukva == "ё" && letters.include?("е")) ||
        (bukva == "и" && letters.include?("й")) ||
        (bukva == "й" && letters.include?("и"))

      # Введённую букву добавляем в "good_letters"
      # если это "е", то добавляем "ё" и наоборот
      # Аналогично с буквами "и", "й"
      good_letters << bukva
      if bukva == "е"
        good_letters << "ё"
      end

      if bukva == "ё"
        good_letters << "е"
      end

      if bukva == "и"
        good_letters << "й"
      end

      if bukva == "й"
        good_letters << "и"
      end

      if @good_letters.size == @letters.uniq.size
        @status = 1
      end

    else
      @bad_letters << bukva
      @errors += 1

      if @errors >= 7
        @status = -1
      end
    end

  end

  def letters
    return @letters
  end

  def good_letters
    return @good_letters
  end

  def bad_letters
    return @bad_letters
  end

  def status
    return @status
  end

  def errors
    return @errors
  end
end
