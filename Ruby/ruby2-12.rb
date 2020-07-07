# Ruby 模組化

# using calculators.rb

# require 可以不用完整檔案名稱
# load    要完整檔案名稱

require './modle/calculators'
load    './modle/calculators.rb'

#  require 只會載入一次
#  load    每次執行就載入一次


# =======================================================

def block(num)
    puts "============================"
    puts "|         範例 #{num}            |"
    puts "============================"
end

# =======================================================

block(1)

p bmi_calculator(1.78, 80)