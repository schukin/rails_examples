class CharlieController < ApplicationController
	def home
		@value = 3
		@string = stringify()
	end
end
