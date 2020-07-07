# Ruby Block

# Block = 一段不會被主動執行的程式碼
#  yield

# =======================================================

def block(num)
    puts "============================"
    puts "|         範例 #{num}            |"
    puts "============================"
end

# =======================================================

block(1)

def say_hello
    puts "hello, 您好"
end

say_hello 

puts "there"

# =======================================================

block(2)

#  yield 使用
#  控制權轉讓給Block

def say_hello
    puts "hello, 您好"
    yield
    puts "你先請"
end

say_hello {
    puts "here"
}

puts "there"