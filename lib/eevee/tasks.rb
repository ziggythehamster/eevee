%w(
	eevee
	build
).each do |task|
	load "eevee/tasks/#{task}.rake"
end
