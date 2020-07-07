# Ruby 雜湊 （Hash）


# =======================================================

def block(num)
    puts "============================"
    puts "|         範例 #{num}            |"
    puts "============================"
end

# =======================================================

block(1)

# 舊式 Hash 寫法
profile = {:name => 'eddie', :age => 18}

#  Ruby 1.9 之後的新式寫法 （類似 Json 格式）
profile = { name: 'KK', age: 18}

p profile

# =======================================================

block(2)

# 取 Keys values

p "keys: #{profile.keys}"
p "values: #{profile.values}"

# nil
p "profile[name] = #{profile["name"]}"
p profile["name"]

# kk
p "profile[name] = #{profile[:name]}"
p profile[":name"]