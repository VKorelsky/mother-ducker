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
            # this method call fills out our instance variables
            user.build_profile
            # initiate a strategy class, passing it the user instance
            strategy_orchestrator = StrategyCoordinator.new(user)

            # call Strategy.strategize while user.satisfied == false
            until user.satisfied
              # this method asks the user if he is happy currently ?
              user.enquire_satisfaction
              strategy_orchestrator.strategize

              # fake
              user.satisfied = true
            end
            # it will pick and execute a strategy from the set

        end
    end
end
