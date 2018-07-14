module MotherDucker

  class User
    attr_accessor :satisfied
    
    def initialize
      # set our user attributes in here
      @satisified = false
    end

    def build_profile
      # TODO
      puts "Code me ! User#build_profile! I will build the user profile"
    end

    def enquire_satisfaction
      # TODO
      puts "Code me ! User#enquire_satisfaction! I will check for happiness"
    end
  end
end
