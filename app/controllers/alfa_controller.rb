# Illustrates basic usage of a mixin
class AlfaController < ApplicationController

	include Schukin::Stringifier

	def home
		@value = 1
		@string = stringify()
	end

end
