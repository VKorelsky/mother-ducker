def error_parser(message)
  if message.match(/undefined method/)
    line = /\:\d+\:/.match(message)[0].gsub(":", "")
    file_name = /\#\<\w+\:/.match(message)[0].gsub("#<", "").gsub(":", "")
    puts "\n"
    puts "Looks like we have an undefined method on line #{line} of your #{file_name.downcase}.rb file.\n  Do you know what this means?"
    answer_1 = gets.chomp
    if answer_1 == "yes"
      puts "Then go to line #{line} and fix it..."
    else
      puts "You haven't properly defined a method in your #{file_name} class."
      puts "Let's go to line #{line} of your code, and see what's wrong."
      puts "Which method is being called on line #{line}?"
      method_name = gets.chomp
      puts "Is there a method defined \"#{method_name}\" in your #{file_name} class?"
      answer_2 = gets.chomp
      if answer_2 == "no"
        puts "Create a method named \"#{method_name}\" in your #{file_name} class."
      end
    end
  end
end


puts "Please copy and past the error which you are seeing:"
error = gets.chomp

error_parser(error)
