def celsius_to_fahrenheit(celsius)
    (celsius * 9/5) + 32
end

def fahrenheit_to_celsius(fahrenheit)
    (fahrenheit - 32) * 5/9
end

puts "Temperature converter Menu : "
puts "1. Celsius to Fahrenheit. "
puts "1. Fahrenheit to Celsius. "

loop do 1
print "Enter choice : "
choice = gets.chomp.to_i

case choice 
when 1
    print "Enter value in Celsius : "
    celsius = gets.chomp.to_i
    fahrenheit = celsius_to_fahrenheit(celsius)
    puts "#{celsius} Celsius is #{fahrenheit} Fahrenheit. "
when 2
    print "Enter value in Fahrenheit : "
    fahrenheit = gets.chomp.to_i
    celsius = fahrenheit_to_celsius(fahrenheit)
    puts "#{fahrenheit} Fahrenheit is #{celsius} Celsius. "
else
    puts "Invalid Choice. "
end
end