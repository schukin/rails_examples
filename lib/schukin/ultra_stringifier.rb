module Schukin
	module UltraStringifier
		def self.included(base)
			base.send(:include, InstanceMethods)
			base.send(:extend, ClassMethods)
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

		module ClassMethods
			# Note that this is method's signature is
			#	def hello
			# and not
			#	def self.hello
			def hello
				"Hello world!"
			end
		end
	end

	DeltaController.send(:include, Schukin::UltraStringifier)
end
