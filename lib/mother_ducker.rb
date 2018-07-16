# entrypoint
require_relative "mother_ducker/constants"
require_relative "mother_ducker/strategy_orchestrator"

module MotherDucker
    class Starter
        def self.launch
            satisfied = false
            strategy_orchestrator = StrategyCoordinator.new

            puts "Welcome to the MotherDucker ! I will help you relax and debug your code"
            
            # for the demo
            puts "On a scale of 1 to 10 ? How frustrated are you ?"
            gets.chomp
            puts "Ok ! Let's work through that"

            until satisfied
              # apply a strategy to help the user debug
              strategy_orchestrator.strategize
              puts ""
              puts "are you feeling better ? [ y | n ]"
              
              input = gets.chomp.downcase
              satisfied = true if (input == "y" || input == "yes")
            end

            puts "thanks for using me! see you soon !"
        end
    end
end
