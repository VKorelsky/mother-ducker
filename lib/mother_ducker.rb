# entrypoint
require_relative "mother_ducker/constants"
require_relative "mother_ducker/strategy_orchestrator"

# TODO: change name of this class
# class in module in charge of running the code
module MotherDucker
    class Starter
        def self.launch
            satisfied = false
            # initiate a strategy class, passing it the user instance
            strategy_orchestrator = StrategyCoordinator.new

            puts "Welcome to the MotherDucker ! I will help you relax and debug your code"
            
            # for the demo
            puts "On a scale of 1 to 10 ? How frustrated are you ?"
            gets.chomp
            puts "Ok ! Let's work through that"

            # call Strategy.strategize while user.satisfied == false
            until satisfied
              # this method asks the user if he is happy currently ?
              strategy_orchestrator.strategize
              puts ""
              puts "are you feeling better ? [ y | n ]"
              
              input = gets.chomp.downcase
              satisfied = true if (input == "y" || input == "yes")
            end
            # it will pick and execute a strategy from the set

            puts "thanks for using me! see you soon !"
        end
    end
end
