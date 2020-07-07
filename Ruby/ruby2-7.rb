# Ruby 迴圈種類

# for  while  loop  method
# 迴圈與迭代
# 
# 迴圈 （ 你就跑五圈吧 ）
# 迭代 （ 你把這五個元素都看過一次吧 ）

# =======================================================

def block(num)
    puts "================================="
    puts "範例 #{num}"
    puts "================================="
end

# =======================================================

# for
block(1)

names = ["eddie","joanne","john","sherly"]

for name in names do
    puts name
end

# =======================================================

#  while
block(2)

x = 0

while x < 10
    puts x
    x += 1
end

# =======================================================

#  邪惡分身
#  until = while not

block(3)
a = 0

until a >= 10
    puts a
    a += 1
end

# =======================================================

#  loop
block(4)

i = 0
loop do
    puts i
    i += 1
    break if i > 8
end

#  do .. end 或是 {  } 這東西叫做 Block (程式碼區塊)


# =======================================================

#  迭代
block(5)

5.times do |i|
    puts "hello ruby,#{i}"
end

#  do .. end 或是 {  } 這東西叫做 Block (程式碼區塊)
#  意外地竟然可以這樣用
5.times { |i|
    puts "hello ruby,#{i}"
}

10.downto(1) do |i|
    puts "hello ruby,#{i}"
end

# =======================================================

#  迭代式迴圈
block(6)

names = ["eddie","joanne","john","sherly"]

names.each do |name|
    puts name
end

# =======================================================

#  迭代式迴圈2
block(7)

names.each.with_index do |name, i|
    puts "#{i} #{name}"
end