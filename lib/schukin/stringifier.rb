module Schukin
	module Stringifier
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

	puts "###### Stringifier"
end
