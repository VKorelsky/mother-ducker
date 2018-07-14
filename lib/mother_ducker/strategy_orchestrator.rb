module MotherDucker


  class StrategyCoordinator
      TEXT_ARRAY = [ "Get comfortable",
        "Relax your body by releasing any areas of tension",
        "You're at a hackathon... You've been coding for hours...",
        "Forget about bugs... Forget about method errors...",
        "Close your eyes...",
        "Actually don't close your eyes...",
        "Breathe deeply in, drawing air fully into your lungs....",
        "And release the air...",
        "Breathe in again, slowly....",
        "And breathe out.....",
        "Draw a deep breath in....",
        "And out....",
        "In.....",
        "Out.....🌬",
        "Become more and more relaxed with each breath...",
        "In.....",
        "Out..... 😤😤😤",
        "🌈 🌈 🌈 🌈 🌈 🌈 🌈 🌈 🌈 🌈 🌈 🌈 🌈 🌈 🌈 🌈 🌈 🌈 🌈 🌈 🌈 🌈 🌈"
      ]

    def initialize
      @meditation_used = false
      @debugging_used = false
    end

    def strategize
      if !(@meditation_used)
        meditate
      elsif !(@debugging_used)
        debug
      else
        puts "we did what we could ! maybe take a nap ? or look at memes?"
      end
    end

    def meditate
      emoji_array = ["🌬", "😤", "🌈"]

      puts "I think some meditation would be useful. Let me guide you through it"

      TEXT_ARRAY.each do |sentence|
          sleep_with_dots(3)
          puts sentence
          speech_sentence = sentence.split.reject { |word| emoji_array.include?(word.chomp) }

          %x(say "#{speech_sentence}")
      end


      @meditation_used = true
    end

    def debug
      puts "What about some debugging?"
      puts "copy and paste the error which you are seeing, I will help you understand it:"
      error = gets.chomp

      parse_error(error)

      @debugging_used = true
    end

    def parse_error(error)
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

    def sleep_with_dots(seconds)
      i = 0
      while i < seconds
        sleep(0.5)
        print "."
        i += 0.5
      end
      puts ""
    end
  end
end
