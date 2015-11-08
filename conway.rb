require 'rspec'
require_relative './classes/grid.rb'
require_relative './classes/cell.rb'
require 'colorize'

grid = Grid.new(75)
 
count = 0

while count < 100
	mini_count = 0


	system "clear"
	grid.populate

	puts " "
	grid.grid.each_index do |x|
		grid.grid[x].each_index do |y|
			if grid.grid[x][y].state == 1
				print "*".colorize(:blue)
			elsif grid.grid[x][y].state == 0
				print "*".colorize(:black)
				
			end
			#print (y.state.to_s) + " ".chomp
		end
	end

	while mini_count < 1000000
		mini_count+=1
	end
	grid.grid.each do |x|
		x.each do |y|
			y.regenerate
		end
	end

#removemos objetos luego del regenerate y cambiamos a #'s'
	grid.grid.each_index do |x|
		grid.grid[x].each_index do |y|
			grid.grid[x][y] = grid.grid[x][y].state
		end
	end


	count += 1

	if !grid.check_for_all_zeroes
		break
	end
end

#repoblando
