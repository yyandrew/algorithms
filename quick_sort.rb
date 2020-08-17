# frozen_string_literal: true

class QuickSort
  class << self
    def sort(arr)
      return arr if arr.length < 2

      base_index = 0
      left_arr = []
      right_arr = []

      arr[1..-1].each do |elem|
        left_arr << elem && next if elem < arr[base_index]

        right_arr << elem
      end
      sort(left_arr) + [arr[base_index]] + sort(right_arr)
    end
  end
end
