# frozen_string_literal: true

require_relative '../quick_sort'

RSpec.describe QuickSort do
  describe '#quick_sort' do
    it 'return sorted array' do
      arr = [3, 1, 7, 2, 5, 4]

      expect(QuickSort.sort(arr)).to eq([1, 2, 3, 4, 5, 7])
    end
  end
end
