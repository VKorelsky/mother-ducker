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
      input = gets.chomp.downcase

      @satisfied = true if (input == "y" || input == "yes")
    end

  end
end
