require_relative 'lib/test.rb'
require_relative 'lib/file_reader.rb'

questions_file_name = "#{File.dirname(__FILE__)}/data/questions.txt"
results_file_name = "#{File.dirname(__FILE__)}/data/results.txt"
questions = FileReader.new
questions = questions.read_file(questions_file_name)
results = FileReader.new
results = results.read_file(results_file_name)

name = ARGV[0]

name = "Таинственная персона" if name == nil

puts "Привет, #{name}"

test = Test.new

test.ask_next_question(questions) until test.finished?(questions)

puts
puts test.result(results)
