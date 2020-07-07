# Ruby 方法 

# 定義方法
# def method_name(param1, param2)
#   ....
# end

# Ruby 可適時省略
# 會自動回傳最後一行的執行結果

# 定義函數 有東西進去 也有東西出來
# methond 有作用對象

kitty = Cat.new
kitty.eat

funciont x(n){
    return 3 * n + 2
}


# =======================================================

def block(num)
    puts "============================"
    puts "|         範例 #{num}            |"
    puts "============================"
end

# =======================================================

block(1)

def say_hello_to someone = "no one"
    puts someone
end


say_hello_to

# =======================================================

block(2)

# 問號通常會回傳真假值
# 驚嘆號通常表示要注意

def is_adult?(age)
    if age > 18
        return true
    else
        return false
    end
end


# =======================================================

block(3)

# 驚嘆號通常表示要注意

# 回傳 
# [2, 5, 7, 9]
# [9, 5, 2, 7]
list = [9, 5, 2, 7]
p list.sort
p list

# 回傳 
# [2, 5, 7, 9]
# [2, 5, 7, 9]
p list.sort!
p list