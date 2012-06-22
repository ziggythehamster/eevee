namespace :eevee do
	desc "Returns the version number of Eevee"
	task :version do
		puts "Eevee version #{Eevee::VERSION}"
	end
end
