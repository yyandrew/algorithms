class BubbleSort
  class << self
    def sort!(arr)
      # 外循环从数组的第一项迭代至最后一位
      # 控制在数组中经过多少轮排序
      arr.each_with_index do |elem, i|
        # 内循环将从第一个元素迭代至倒数第二位，防止数组越界
        # 它比较当前项和下一项的比较，如果当前项大于下一项，则交换它们。
        arr[0..-2].each_with_index do |elem, j|
          if elem > arr[j + 1]
            arr[j] = arr[j + 1]
            arr[j + 1] = elem
          end
        end
      end
    end
  end
end
