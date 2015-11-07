require 'rspec'
require_relative '../classes/conway_class.rb'

RSpec.describe Cell do
	
	describe "#regenerate" do
		it 'regenerates a live cell from a live cell if it has 2 neighbours' do
			cell1 = Cell.new(1, [0,0,0,0,0,0,1,1])
			expect(cell1.regenerate).to eq(1)
		end
	end

	describe '#regenerate' do
		it 'regenerates a live cell from a live cell if it has 3 neighbours' do
			cell1 = Cell.new(1, [0,0,0,0,0,1,1,1])
			expect(cell1.regenerate).to eq(1)
		end
	end

	describe '#regenerate' do
		it 'regenerates a dead cell from a dead cell if it has 0 neighbours' do
			cell1 = Cell.new(0, [0,0,0,0,0,0,0,0])
			expect(cell1.regenerate).to eq(0)
		end
	end

	describe '#regenerate' do
		it 'converts a live cell to a dead cell if it has less than 2 neighbours' do
			cell1 = Cell.new(1, [0,0,0,0,0,0,0,1])
			expect(cell1.regenerate).to eq(0)
		end
	end

	describe '#regenerate' do
		it 'converts a live cell to a dead cell if it has more than 3 neighbours' do
			cell1 = Cell.new(1, [0,0,0,0,1,1,1,1])
			expect(cell1.regenerate).to eq(0)
		end
	end

	describe '#regenerate' do
		it 'regenerates a dead cell to a live cell if it has exactly 3 neighbours' do
			cell1 = Cell.new(0, [1,1,1,0,0,0,0,0])
			expect(cell1.regenerate).to eq(1)
		end
	end
			
end