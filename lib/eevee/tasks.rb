module Eevee
	class Tasks
		def self.load_tasks
			require "rake"

			%w{eevee build}.each do |task|
				load "tasks/#{task}.rake"
			end
		end
	end
end
