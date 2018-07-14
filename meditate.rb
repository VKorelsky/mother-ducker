def sleep_with_dots(seconds)
  i = 0
  while i < seconds
    sleep(0.5)
    print "."
    i += 0.5
  end
  puts ""
end

require "yaml"

# path to file
file_path = "./meditation_text.yaml"
med_arr = YAML.load(open(file_path).read)

emoji_array = ["🌬", "😤", "🌈"]

med_arr.each do |sentence|
  sleep_with_dots(3)
  puts sentence
  p speech_sentence = (sentence.split.reject{|word|  word == emoji_array}).join(" ") #split reject
  %x(say "#{speech_sentence}")
end

# def meditate
#   puts "I think some meditation would be useful. Would you like me to be your meditation guide now? [ y | n ]"
#   print "> "
#   user_input = gets.downcase.chomp
#   if user_input == "y" || user_input == "yes"

#     sleep(1)
#     puts ""
#     print "Great, let's begin."
#     sleep_with_dots(3)
#     print "Begin by finding a comfortable position."
#     sleep(3)
#     print " Sitting on your chair with your hands resting on your legs is fine."
#     sleep(5)
#     puts ""
#     puts ""
#     puts "Close your eyes."
#     sleep(3)
#     puts ""
#     print "Actually don't close your eyes."
#     sleep(0.5)
#     print "."
#     sleep(0.5)
#     print "."
#     sleep(1)
#     puts ""
#     puts ""
#     print "Otherwise you can't see my instructions"
#     sleep(0.5)
#     print " 🙈"
#     sleep(0.5)
#     print "🙈"
#     sleep(0.5)
#     print "🙈"
#     sleep(5)

#   else
#     sleep(1)
#     puts "No problem! I'm always here for when you need me."
#   end

# end

# meditate
