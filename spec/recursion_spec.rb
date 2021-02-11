# frozen_string_literal: true

require_relative '../recursion.rb'

RSpec.describe "Recursion" do
  describe '#sum' do
    it 'return summary of elements from array' do
      arr = [3, 1, 7, 2, 5, 4]

      expect(sum(arr)).to eq(22)
    end
  end
end
