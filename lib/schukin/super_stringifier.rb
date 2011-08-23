module Schukin
	module SuperStringifier

		def self.included(controller_class)
			controller_class.send(:include, InstanceMethods)
		end

		module InstanceMethods
		def stringify
			if @value == 1
				"One"
			elsif @value == 2
				"Two"
			elsif @value == 3
				"Three"
			end
		end
		end
	end

	puts "########## PATCH HAS BEEN LINCUDED"
	BravoController.send(:include, Schukin::SuperStringifier)

end
