class DeltaController < ApplicationController

	def home
		@value = 3
		@string = stringify
		@string2 = DeltaController.hello
	end

end
