# ============================================
# Quest1
# p [1, 2, 3, 4, 5].my_map { |x| x * 2 }  
# 印出 [2, 4, 6, 8, 10]
# ============================================

class Array
    def my_map
        result = []

        self.each do |i|
            result << yield(i)   
        end
        
        return result
    end
end

p [1, 2, 3, 4, 5].my_map { |x| x * 2 }  
puts
# **************************************************************
# 記錄 遇到的問題
# 使用 list.my_map 會順利通過
# 用 [1, 2, 3, 4, 5].my_map 會遇到 Private method called error
# 原來使用的方式是錯的 所以改成自訂類別
# 
# 然後遇到這個
# Uncaught exception: undefined method `*' for nil:NilClass
# 然後加入 self 
# 用中斷點去追內容
# 發現 self 是直接整個 array [1, 2, 3, 4, 5] 並非單個單個
# 所以要自己去拆 
# 最後問題 yield 後 block 怎麼進行回傳
# 查了一下 發現了這篇文章
# https://medium.com/rubycademy/the-yield-keyword-603a850b8921
# 結束
# **************************************************************

# ======================================
# Quest2
# p "yuu@5xruby.tw".is_email?             
# 印出 true
# ======================================

class String
    def is_email?
        return self.match('^\w{1,20}@[a-zA-Z0-9]{2,30}\.[a-zA-Z]{2,30}(\.[a-zA-Z]{2,30})?$') != nil
    end
end

p "yuu@5xruby.tw".is_email?   
puts
# **************************************************************
# 記錄 遇到的問題
# 看到題目的第一眼覺得應該是要做 Regular Expression
# 查了一下 Ruby 的正規 發現是一樣的 就直接開搞
# 用 match 後發現 怎麼結果會是 ＃<MatchData "yuu@5xruby.tw">
# return self.match('^\w{1,20}@[a-zA-Z0-9]{2,30}\.[a-zA-Z]{2,30}(\.[a-zA-Z]{2,30})?$')
# 
# 查了一下 Ruby 使用手冊 發現可以用判斷是不是nil
# https://guides.ruby.tw/ruby/regexp.html
# return self.match('^\w{1,20}@[a-zA-Z0-9]{2,30}\.[a-zA-Z]{2,30}(\.[a-zA-Z]{2,30})?$') != nil
# **************************************************************

# ======================================
# Quest3
# p "yuu.kk@5xruby.tw".is_email?          
# 印出 true
# ======================================

class String
    def is_email?
        return self.match('^[\w.]{1,20}@[a-zA-Z0-9]{2,30}\.[a-zA-Z]{2,30}(\.[a-zA-Z]{2,30})?$') != nil
    end
end

p "yuu.kk@5xruby.tw".is_email?
puts

# **************************************************************
# 記錄 遇到的問題
# 此題同上
# **************************************************************

# ======================================
# Quest4
# p "what".is_email?                      
# 印出 false
# ======================================

class String
    def is_email?
        return self.match('^[\w.]{1,20}@[a-zA-Z0-9]{2,30}\.[a-zA-Z]{2,30}(\.[a-zA-Z]{2,30})?$') != nil
    end
end

p "what".is_email?
puts

# **************************************************************
# 記錄 遇到的問題
# 此題同上
# **************************************************************