module MotherDucker

  class User
    attr_accessor :satisfied

    def initialize
      # set our user attributes in here
      @satisified = false
    end

    # def build_profile
    #   puts "Code me ! User#build_profile! I will build the user profile"
    # end

    def enquire_satisfaction
      puts "Are you feeling better ? [ y | n ]"
      input = gets.chomp
      case input.downcase
      when "y", "yes"
        @satisfied = true
      when "n", "no"
        @satisfied = false
      else
        puts "I don't understand. I will try something anyway"
      end
    end
  end
end
