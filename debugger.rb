require "pry"

def error_parser(message)

  if message.match(/undefined method/)
    line = /\:\d+\:/.match(message)[0].gsub(":", "")
    file_name = /\#\<\w+\:/.match(message)[0].gsub("#<", "").gsub(":", "").downcase
    puts "\n"
    puts "Looks like we have an undefined method on line #{line} of your #{file_name}.rb file.\n  Do you know what this means?"
    answer_1 = gets.chomp
    if answer_1 == "yes"
      puts "Then go to line #{line} and fix it..."
    else
      puts "Let's go to line #{line} of your code, and see what's wrong."
    end
  end

end


puts "Please copy and past the error which you are seeing:"
error = gets.chomp

error_parser(error)
