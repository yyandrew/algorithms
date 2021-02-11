# 递归的三条定律分别为1，2，3
def sum(arr)
  if (arr.length == 1) # 1. 递归停止条件
      arr[0]
  else
    # 2. arr[1..-1]使数组越来越小，逐步接近停止条件(lenght为1)
    # 3. 递归调用sum方法
    arr[0] + sum(arr[1..-1])
  end
end
puts sum([1, 2, 5, 7])
