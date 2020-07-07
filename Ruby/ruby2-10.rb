# Ruby Symbol 符號

#   符號 ＝ 有名字的物件
#  an object with a name 

#       1  是一個數字物件
#       "aa"是一個字串物件
#       :hello 是一個符號物件

# 符號不是變數， 它就只是一個值 （或是說一個物件）

# 字串轉符號 (印出:name)
# p "name".to_sym
# p "name".intern

# 符號轉字串
# p :name.to_s
# p :name.id2name

# =======================================================

def block(num)
    puts "============================"
    puts "|         範例 #{num}            |"
    puts "============================"
end

# =======================================================
block(1)


# 變數指向一個字串
my_name = "Ivey"  
# 變數指向一個符號
yout_name = :name

# 字串和符號的差別
# 字串的內容可以變, 但 Symbol 不行

name = 'abcdefg'
name[1] = 'x'

# 這樣不能執行
# name = :abcdefg
# name[1] = 'x'


# 字串的效能 比符號差一點點
p "hello".object_id
p "hello".object_id
p "hello".object_id
p "hello".object_id

p :hello.object_id
p :hello.object_id
p :hello.object_id
p :hello.object_id

# object_id 數字算法  xn + 1
p 2.object_id     

# 冷凍字串
p "hello".freeze.object_id
p "hello".freeze.object_id
p "hello".freeze.object_id