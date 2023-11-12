def is_palindrome(str)
    str = str.gsub(/\W/, '')
    str == str.reverse
end 
print "Enter String : "
input = gets.chomp
if is_palindrome(input)
    puts "#{input} is palindrome"
else
    puts "#{input} is not palindrome"
end