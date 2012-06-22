module Eevee
	# A class to abstract things from the application's application.yml.
	# Also has some system-wide methods to simplify task development.
	class Application
		# Returns the root of the application.
		def self.root
			if @root.nil?
				raise "Eevee::Application.root is not set. Have you run Eevee::Application.setup(File.expand_path(__FILE__))?"
			else
				@root
			end
		end

		# Sets up the application.
		def self.setup(basefile)
			root = File.dirname(basefile)

			if File.exists?("#{root}/application.yml")
				@root = root
			else
				raise "Eevee::Application.setup cannot locate application.yml in #{root}"
			end

			# TODO: Parse application.yml
		end
	end
end
