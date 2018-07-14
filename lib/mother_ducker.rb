# entrypoint
require_relative "mother_ducker/strategy_orchestrator"
require_relative "mother_ducker/user"

# TODO: change name of this class
# class in module in charge of running the code
module MotherDucker
    class Starter
        def self.launch
            # hackish but who's checking ?
            # Build a user profile
            user = User.new
            # initiate a strategy class, passing it the user instance
            strategy_orchestrator = StrategyCoordinator.new

            puts "Welcome to the MotherDucker ! I will help you relax and debug your code"
            puts "On a scale of 1 to 10 ? How frustrated are you ?"

            frustration = gets.chomp

            puts "Ok ! Let's work through that"

            # call Strategy.strategize while user.satisfied == false
            until user.satisfied
              # this method asks the user if he is happy currently ?
              strategy_orchestrator.strategize
              user.enquire_satisfaction

              # fake
              user.satisfied = true
            end
            # it will pick and execute a strategy from the set

            puts "thanks for using me! see you soon !"
        end
    end
end
