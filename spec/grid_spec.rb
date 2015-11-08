require_relative '../classes/grid.rb'

require 'rspec'

RSpec.describe Grid do
	describe "#cell_neighbours" do
		it 'returns an array containing the 8 neighbours of a cell. assign 0 if neighbour is nil' do
			g = Grid.new(1)

			g.grid = [[0,1,0,1],
								[0,1,1,0],
								[0,1,1,1],
								[0,0,1,0]]

			expect(g.cell_neighbours 2,1).to eq([0,1,1,0,1,0,0,1])
			expect(g.cell_neighbours 0,0).to eq([0,0,0,0,1,0,0,1])
		end
	end
end
