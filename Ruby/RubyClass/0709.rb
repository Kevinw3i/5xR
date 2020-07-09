#  P 
# 印出完整結構

# puts 
# 印出內容

def a
  return 1
end
  
def b
  return 2
end

def c
  puts 1
end
  
def d
  puts 2
end
  
# a && b

# puts nil.nil?
# ruby 所有方法都有回傳結果

# def x(n) 
#   return 3 * n + 2 
# end

# 
puts(a && b)

# 
puts(a || b)

# 
puts "======="
puts "puts"
puts(c && d)

# 
puts(c || d)

# false nil  
# 在RUBY這兩個是假的 其他都是真的

# http://rubyer.me/blog/568/

# Ruby的&&, ||与其它语言有些不同。
# &&运算法则为：左边为false或nil时，直接分别返回false或nil，右边将不会运算。
# 左边不为false或nil时，返回右边的对象。
# ||运算法则为：左边为false或nil时，返回右边的对象。
# 左边不为false或nil时，直接返回左边的对象，右边的不会运算。
