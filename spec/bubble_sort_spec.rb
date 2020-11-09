# frozen_string_literal: true

require_relative '../bubble_sort.rb'

RSpec.describe BubbleSort do
  describe '.sort!' do
    it 'return sorted array' do
      arr = [3, 1, 7, 2, 5, 4]

      expect(BubbleSort.sort!(arr)).to eq([1, 2, 3, 4, 5, 7])
    end
  end
end
