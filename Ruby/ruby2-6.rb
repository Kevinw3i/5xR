a = 10 
b = "10"


# == 檢查兩個運算子的值是否相等 (check if the value of two operands are equal)
p a == b
# === 測試case語法中、when子句內的相等性 (test equality within the when clause of a case statement)
# ===比的是case equality in case statement(更近一步來說，比的是上層的類別物件class object)
p a === b


p 123.class

# =======================================================

# if 倒裝句
weather = "晴天"

if weather == "晴天"
    puts "出門玩"
end

# 與以下程式相等
puts "出門玩" if weather == "晴天"

# =======================================================
# evil twins 邪惡分身
# unless = if not  
# if = unless not

weather = "晴天"

if not weather == "下雨"
    puts "出門玩"
end

# 等同下方程式
unless weather == "下雨"
    puts "出門玩"
end

puts "出門玩" unless weather == "下雨"

# =======================================================

age = 19

if age >=18
    status = "Adu"
else
    status = "Not Adu"
end

status = (age >= 18) ? "Adu" : "Not Adu"

# =======================================================

if weather == "下雨"
    puts "宅在家"
elsif weather == "出太陽"
    puts "出去玩"
else
    puts "睡覺"
end


# =======================================================

whoisa = "A"

case whoisa
    when "A"
        puts "A"
    when "B"
        puts "B"
    else
        puts "no one"
    end

# =======================================================

age = 10 

if age >= 0 && age <= 3
    puts "嬰兒"
elsif age >= 4 && age <= 10
    puts "兒童"
elsif age >= 11 && age <=17
    puts "青少年"
else
    puts "成年"
end



case age
    when 0..3
        puts "嬰兒"
    when 4..10
        puts "兒童"
    when 11..17
        puts "青少年"
    else
        puts "成年"
end


# =======================================================

# 例外處理

def bmi_calc(h,w)
    begin
        w / (h * h)
    rescue => exception
        puts exception
        return 0
    end
end

p bmi_calc(0,60)