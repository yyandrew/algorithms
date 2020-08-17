# frozen_string_literal: true

require 'rspec'
require_relative '../two_sum'

RSpec.describe TwoSum do
  describe '#two_point_method' do
    it 'return index of two elements' do
      arr = [3, 4, 1, 5, 6]
      ts = TwoSum.new(arr, 6)

      expect(ts.two_point_method).to eq([2, 3])
    end

    it 'return nil if cat\'t find two element' do
      arr = [2, 4, 1, 5, 6]
      ts = TwoSum.new(arr, 12)

      expect(ts.two_point_method).to eq(nil)
    end
  end

  describe '#hash_method' do
    it 'return index of two elements' do
      arr = [3, 4, 1, 5, 6]
      ts = TwoSum.new(arr, 6)

      expect(ts.hash_method).to eq([2, 3])
    end

    it 'return nil if cat\'t find two element' do
      arr = [2, 4, 1, 5, 6]
      ts = TwoSum.new(arr, 12)

      expect(ts.hash_method).to eq(nil)
    end
  end
end
