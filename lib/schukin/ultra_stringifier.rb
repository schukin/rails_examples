module Schukin
	module UltraStringifier
		def self.included(base)
			base.send(:include, InstanceMethods)
			base.send(:extend, ClassMethods)

			# alias_method_chain does some cool stuff:
			#	We redefine the default 'some_method' to use the definition in
			#	'some_method_with_awesomeness'. We can still use the old method definition
			#	by invoking 'some_method_without_awesomeness'.
			base.alias_method_chain :some_method, :awesomeness
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

			def some_method_with_awesomeness
				"This was overridden by UltraStringifier"
			end
		end

		module ClassMethods
			# Note that this is method's signature is
			#	def another_method
			# and not
			#	def self.another_method
			# even though it will be added as a class method
			def another_method
				"Hello world!"
			end
		end
	end

	DeltaController.send(:include, Schukin::UltraStringifier)
end
