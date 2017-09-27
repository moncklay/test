class Test
  def initialize
    @score = 0
    @question_number = 0
  end

  def ask_next_question(questions)
    puts
    puts questions[@question_number]

    user_input = nil

    until (user_input == "да") || (user_input == "нет") || (user_input == "иногда") do
      puts "Нужен ответ: «да», «нет», «иногда»"
      user_input = STDIN.gets.chomp.downcase
    end

    answers_score(user_input)
    @question_number += 1
  end

  def answers_score(user_input)
    case user_input
      when "да"
        score(2)
      when "иногда"
        score(1)
      else
        score(0)
    end
  end

  def score(point)
    @score += point
  end

  def finished?(questions)
    @question_number == questions.size
  end

  def result(results)
    case @score
      when 0..3
        results[6]
      when 4..8
        results[5]
      when 9..13
        results[4]
      when 14..18
        results[3]
      when 19..24
        results[2]
      when 25..29
        results[1]
      else
        results[0]
    end
  end
end
