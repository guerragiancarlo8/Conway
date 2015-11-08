class Cell
	attr_accessor :state
	def initialize(state, neighbours)
		@state = state
		@neighbours = neighbours
	end

	def regenerate

		case @state
		when 1
			if count_live_neighbours == 2 || count_live_neighbours == 3
				@state
			elsif count_live_neighbours < 2
				@state = 0
				@state
			elsif count_live_neighbours > 3
				@state = 0
				@state
			else

				puts "failure. terminating"

			end

		when 0
			if count_live_neighbours == 0
				@state
			elsif count_live_neighbours == 3
				@state = 1
				@state
			end

		else
			puts "failed at reading the state case statement"
		end
	end

	def count_live_neighbours

		count = 0
		@neighbours.each {|x| if x == 1 then count+=1 end}
		count

	end
end