module Schukin
	module AnotherStringifier
		def self.included(base)
			base.send(:include, InstanceMethods)
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

	CharlieController.send(:include, Schukin::AnotherStringifier)
end
