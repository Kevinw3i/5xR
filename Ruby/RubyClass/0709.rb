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


# 下午

# 開頭大寫就是常數
# 常數定義 開頭大寫

a = "2"
puts a.object_id

b = a
puts b.object_id

c = "2"
puts c.object_id

b = c
puts b.object_id

e = 2
puts e.object_id

f = e + 1
puts e.object_id
puts f

e = e + 1
puts e.object_id
puts e



aa = 1

# a = true
if a = 2
    puts "hi"
  else
    puts "hey"
end

#  a = false
if a = nil
  puts "hi"
else
  puts "hey"
end


if a == nil
  puts "hi"
else
  puts "hey"
end


# False value

a = 10
b = "10"
c = 9

puts a == b  
puts a === b
puts a === c
puts a = b


#  這兩個相等 原本是下面那個 後來改上面比較方便
1 + 2
1.+(2)

