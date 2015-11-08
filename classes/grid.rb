require_relative 'cell.rb'
class Grid
	attr_accessor :grid
	def initialize size = 0
		@grid = Array.new(size){Array.new(size,Random.new.rand(2))}
	end

	def check_for_all_zeroes
		count = 0
		@grid.each do |x|
			@grid.each do |y|
				count += 1
			end
		end

		if count == @grid.size * @grid.size
			true
		else
			false
		end
	end

	def cell_neighbours x, y


		main_coord = @grid[x,y]

	
		if (x-1 >= 0 && y - 1 >= 0) && !(@grid[x-1][y-1]).nil?
			top_left = @grid[x-1][y-1]
		else 
			top_left = 0
		end

		if (x-1 >= 0) && !(@grid[x-1][y]).nil?
			top = @grid[x-1][y]
		else
			top = 0
		end

		if (x-1 >= 0 && y + 1 <= @grid.size - 1) && !(@grid[x-1][y+1]).nil?
			top_right = @grid[x-1][y+1]
		else
			top_right = 0
		end

		if (y-1 >= 0) && !(@grid[x][y-1]).nil?
			left = @grid[x][y-1]
		else
			left = 0
		end

		if (y+1 <= @grid.size - 1) && !(@grid[x][y+1]).nil?
			right = @grid[x][y+1]
		else
			right = 0
		end

		if x+1 <= @grid.size - 1 && y-1 >= 0 
			if !(@grid[x+1][y-1].nil?)
				bottom_left = @grid[x+1][y-1]
			end

		else
			bottom_left = 0
		end

		if x+1 <= (@grid.size) -1
			if !(@grid[x+1][y].nil?)
				bottom = @grid[x+1][y]
			end
		else
			bottom = 0
		end


		if x+1 <= (@grid.size) - 1 && y+1 <= (@grid.size) -1 
			if !(@grid[x+1][y+1].nil?)
				bottom_right = @grid[x+1][y+1]
			end
		else
			bottom_right = 0
		end

		[top_left, top, top_right, left, right, bottom_left, bottom, bottom_right]


	end

	def populate


		@grid.each_index do |x|
			
			@grid[x].each_index do |y|

				@grid[x][y] = Cell.new(@grid[x][y], cell_neighbours(x,y))
				
			end
		end
	end

end



