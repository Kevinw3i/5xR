list = [1, 4, 2, 4, 6, 7, 8, 2, 3, 2, 1, 6]

# 印出大於 3  的偶數總和

puts list.sum()

tot = 0
list.each{ |x|
    if x > 3 && x%2 == 0
        tot = tot + x
    end
}

puts tot

a = list.select { |x| x > 3}.select{ |x| x % 2 == 0}.sum()
p a 

b = list.select { |x| x > 3}.select{ |x| x.even? }.sum()
p b

list2 = (1..4).map{|x| 
    x * x
}
p list2

# positive negative
# even
p 2.positive?
p ""
def say_hello
    puts "hello, 您好"
    yield
    puts "你先請"
end

say_hello {
    puts "here"
}

puts "there"

def say_hello2
    yield 3, 4
end

say_hello2 do |n|
    puts n
end

def cef
    return 666
end

def abc 
    puts cef
end

abc


5.times { |i|
    puts i 
}


def test_two
    if yield 3,2
        puts "yes"
    else
        puts "no"
    end
end

test_two { |x, y|
    x == 2
}

# Block 會回傳最後的值


# @sdfjia   (O)
# @@jgaijl  (X)

p nil.is_a?(Object)
p 12.is_a?(Object)

p $ruby.is_a?(Object)



# conslo.log(x)
# var x = 1;

# javascript  
# Variable Hoistiong 變數提升
# setTimeout 300
# Event Loop

# creation phase
# x = undefined
# execution phase
# x = 1

# def my_select(list)
#     temp = []
#     list.each{ |i|
#         if i.odd?
#             temp.push(i)
#         end
#     }
# end
# puts temp

list = [1,2,3,4,5]

def my_select2(list)
    result = []

    list.each do |x|
        if yield(x)
            result << x
        end
    end

    return result
end

p my_select2(list) { |i| i.odd? }


# my_select([1,2,3,4,5]){ |i| i.odd? }


p list.select { |x| x.odd? }
p list.reject { |x| x.odd? }


# 1 + 2 * 3 概念 
#  {} 比較強 do end 比較弱
p list.map{
    |item|
    item * 2
}

p list.map do |item|
    item * 2
end


# High order Function
# https://pjchender.github.io/2017/09/26/ruby-%E7%A8%8B%E5%BC%8F%E7%A2%BC%E5%8D%80%E5%A1%8A%EF%BC%88block%EF%BC%89-proc-%E5%92%8C-lambda/
aa = Proc.new { puts "aaa" }

def bb(x)
    x.call
end
bb(aa)

double = Proc.new { ｜i| i * 2 }

# p list.map(double.call)

# p list.map(&double) 

succ_arrow = ->(x){ x + 2 }
succ_arrow.call(3) 

# scope = (:checp, ->{...})
# list.map(double)

#  Compare with Block way and Proc way
# Block way
def f1(n)
    if block_given?
        yield n # yield to black
    else
        puts 'no block'
    end
  end
#   =======================
  # Proc way
  def f2(n, &p)
    if block_given?
      p[n] # call proc p
      # 'p[n]' can be alternated with 'p.call(n)'
      # 'yield n' also works
    else
      puts 'no block'
    end
  end
  
  # Usage
  f1(123)
  f1('Hello'){|s| puts s}
  f2(10){|n| n.times{puts 'a'}}
# ===========================

list10 = [1,2,3,4,5]
list20 = ["a", "b", "c"]

# double2 = lambda (i) { i * 2 }
double2 = ->(x){ x + 2 }
double3 = ->(x){ x + 5 }
p list10.map(&double2)


class Cat
    def initialize
        puts "初始 一 new 馬上做這個"
    end

    private
    def eat(food)
        puts "eat #{food}"
    end
end

kitty = Cat.new
kitty.eat("便當")


# singleton method 單體（例）方法
def kitty.asdfasfsf
    puts "hi"
end

kitty.asdfasfsf

#  self 類別方法
class Cat2 < Cat
    def self.all
        puts "2"
    end
end

Cat2.all

# 類別方法
# Math.abs(-1)
# 實體方法
# m = math.new
# m.abs(-1)


# 開放類別 (open class)
# monkey patching
class String
    def hello
        puts "您好"
    end
end

# (O)
"aa".hello
# (X)
# String.hello


class Integer
    def days
        self
    end

    def ago
        puts "#{self} agos"
    end
end

3.days.ago