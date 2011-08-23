class DeltaController < ApplicationController


	def home
		@value = 3
		@string = stringify
		@string2 = some_method
		@string3 = some_method_without_awesomeness
		@string4 = DeltaController.another_method
	end

	def some_method
		"DeltaController's default implementation of some_method"
	end

end
