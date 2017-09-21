current_path = "./" + File.dirname(__FILE__)

require current_path + "/test.rb"

name = ARGV[0]

name = "Таинственная персона" if name == nil

puts "Привет, #{name}"

test = Test.new

test.ask_next_question until test.finished?

puts test.result.to_s
