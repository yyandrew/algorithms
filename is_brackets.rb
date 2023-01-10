# 判断括号是不是合法

# 创建一个简单的栈结构
class Stack
  def initialize
    @items = []
  end

  def dequeue
    @items.pop
  end

  def enqueue(value)
    @items.push value
  end

  def blank?
    @items.size.zero?
  end

  def to_s
    @items.join(',')
  end
end

def is_valid(brackets)
  # 将括号闭作为键值的原因：
  # 1. 用来判断是否要出栈并对比
  # 2. 比较容易通过括号闭找到括号
  map = {'}': '{', ')': '('}

  stack = Stack.new

  brackets.chars.each do |b|
    # 根据是不是括号闭来判断是出栈还是入栈
    if map.key?(b.to_sym)
      # 是括号闭
      # 出栈并比较是不是括号
      b1 = stack.dequeue
      return false if b1 == map[b]
    else
      # 不是括号闭
      # 直接入栈
      stack.enqueue(b)
    end
    # puts "stack: #{stack}"
  end

  # 不为空说明括号不是成对的
  stack.blank? ? true : false
end

puts "result of ')(}{' #{is_valid(')(}{')}"
puts "result of '(){}' #{is_valid('(){}')}"
puts "result of '({()})' #{is_valid('({()})')}"
puts "result of '({()})' #{is_valid('({()})')}"
puts "result of '})' #{is_valid('})')}"

