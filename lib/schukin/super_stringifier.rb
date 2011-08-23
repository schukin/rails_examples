module Schukin
	module SuperStringifier
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

	BravoController.send(:include, Schukin::SuperStringifier)
end
