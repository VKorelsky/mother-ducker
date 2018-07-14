module MotherDucker
  class StrategyCoordinator
    def initialize(user_instance)
      @user = user_instance
      @meditation_used = false
      @debugging_used = false
    end

    def strategize
      # TODO
      if !(@meditation_used)
        meditate
      elsif !(@debugging_used)
        debug
      else
        puts "we did what we could ! maybe take a nap ? or look at memes?"
      end
    end

    def meditate

      @meditation_used = true
    end

    def debug

      @debugging_used = false
    end
  end
end
