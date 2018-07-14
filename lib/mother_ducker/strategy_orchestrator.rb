require "yaml"

module MotherDucker
  class StrategyCoordinator

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
        puts "we did all we could ! maybe take a nap ? or look at memes?"
      end
    end

    def meditate
      emoji_array = ["🌬", "😤", "🌈"]
      text_array = MotherDucker::MEDITATION_TEXT

      puts "I think some meditation would be useful. Let me guide you through it"

      text_array.each do |sentence|
          sleep_with_dots(3)
          puts sentence
          %x(say "#{sentence}")
      end

      animation_with_a_great_final_frame
      puts "Thanks. I hope that helped you relax"

      @meditation_used = true
    end

    def debug
      puts "What about some debugging?"
      puts "copy and paste the error which you are seeing, I will help you understand it:"
      error = gets.chomp

      parse_error(error)

      @debugging_used = true
    end

    def parse_error(message)
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

    def animation_with_a_great_final_frame

      db_path = File.join(__dir__, 'ascii_animations/ascii_meditation')

      arr = (0..90).to_a
      arr.delete_at(0)
      arr.delete_at(0)
      arr.delete_at(6)
      arr.delete_at(9)
      arr.delete_at(24)
      arr.delete_at(49)
      arr.delete_at(72)
      arr.delete_at(83)
      arr.delete_at(82)
      2.times do
        for i in arr
          puts "\033[2J"
          File.foreach("#{db_path}/#{i}.txt") do |f|
            puts f
          end
          sleep(0.1)
          i += 1
        end
      end
    end
  end
end
