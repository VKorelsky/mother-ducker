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




def meditate

  file_path = "./meditation_text.yaml"
  med_arr = YAML.load(open(file_path).read)

  puts "I think some meditation would be useful. Would you like me to be your meditation guide now? [ y | n ]"
  print "> "
  user_input = gets.downcase.chomp

  if user_input == "y" || user_input == "yes"

    emoji_array = ["🌬", "😤", "🌈"]

    med_arr.each do |sentence|
      # sleep_with_dots(3)
      puts sentence
      p speech_sentence = (sentence.split.reject{|word|  word == emoji_array[0] || word == emoji_array[1] || word == emoji_array[2]}).join(" ") #split reject
    # %x(say "#{speech_sentence}")
    end

  else
    sleep(1)
    puts "No problem! I'm always here for when you need me."
  end
end

meditate
