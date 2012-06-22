require "rake"

module Eevee
	class Tasks
		def self.load_tasks
			%w{eevee build}.each do |task|
				load "tasks/#{task}.rake"
			end
		end
	end
end
