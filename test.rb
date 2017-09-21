class Test

  def initialize

    @score = 0
    @num_qeustion = 0

    current_path = File.dirname(__FILE__)
    question_file = current_path + "/data/questions.txt"
    answers_file = current_path + "/data/answers.txt"

    if File.exist?(question_file)
      q = File.new(question_file, 'r:UTF-8')
      @q_lines = q.readlines
      q.close
    else
      puts "Not found"
    end

    if File.exist?(answers_file)
      a = File.new(answers_file, 'r:UTF-8')
      @a_lines = a.readlines
      a.close
    else
      puts "Not found"
    end

  end

  def ask_next_question

    puts ""
    puts @q_lines[@num_qeustion]

    user_input = nil

    while (user_input != "да") && (user_input != "нет") && (user_input != "иногда") do
      puts "Нужен ответ: «да», «нет», «иногда»"
      user_input = STDIN.gets.chomp.downcase
    end

    if user_input == "да"
      score(2)
    elsif user_input == "иногда"
      score(1)
    end

    @num_qeustion += 1

  end

  def finished?

    @num_qeustion == @q_lines.size

  end

  def score(point)

    @score += point

  end

  def result

    if @score >= 30
      return @a_lines[0]
    elsif @score >= 25
      return @a_lines[1]
    elsif @score >= 19
      return @a_lines[2]
    elsif @score >= 14
      return @a_lines[3]
    elsif @score >= 9
      return @a_lines[4]
    elsif @score >= 4
      return @a_lines[5]
    else
      return @a_linese[6]
    end

  end

end
