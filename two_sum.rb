# frozen_string_literal: true

class TwoSum
  def initialize(arr, target)
    @arr = arr
    @target = target
  end

  # 1. Sort array
  # 2. Add two point: left and rigth.
  # 3. Check the sum of two elements with target value
  def two_point_method
    sorted_arr = @arr.sort
    lp = 0
    rp = sorted_arr.length - 1
    begin
      [sorted_arr[lp], sorted_arr[rp]] && break if sorted_arr[lp] + sorted_arr[rp] == @target

      sorted_arr[lp] + sorted_arr[rp] < @target ? lp += 1 : rp -= 1
    end until lp == rp

    [@arr.find_index(sorted_arr[lp]), @arr.index(sorted_arr[rp])] unless lp == rp
  end

  # 利用hash的key，遍历数组，检查当前target值和数组元素之差在不在hash，如果在就可以返回，不在的话就把当前数组元素存到hash中
  def hash_method
    hash = {}
    @arr.each_with_index do |elem, idx|
      return [hash[@target - @arr[idx]], idx] if hash[@target - @arr[idx]]

      hash[elem] = idx
    end
    nil
  end
end
