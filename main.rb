require_relative 'test.rb'
require_relative 'file_reader.rb'

file_reader = FileReader.new
questions_file_name = "#{File.dirname(__FILE__)}/data/questons.txt"
questions = file_reader.read_questions_file(questions_file_name)
results_file_name = "#{File.dirname(__FILE__)}/data/results.txt"
results = file_reader.read_answers_file(results_file_name)

name = ARGV[0]

name = "Таинственная персона" if name == nil

puts "Привет, #{name}"

test = Test.new

test.ask_next_question(questions) until test.finished?(questions)

puts
puts test.result(results)
