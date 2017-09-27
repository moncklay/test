class FileReader
  def read_questions_file(file_name)
    begin
      File.readlines(file_name, encoding: 'UTF-8')
    rescue Errno::ENOENT
      puts "Отсутствует файл #{file_name}"
      abort
    end
  end

  def read_answers_file(file_name)
    File.readlines(file_name, encoding: 'UTF-8')
  rescue Errno::ENOENT
    puts "Отсутствует файл #{file_name}"
    abort
  end
end

