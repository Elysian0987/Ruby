def fibonancci_series(n)
    fibo_series=[0, 1]
    
    (2...n).each do |i|
        fibo_series[i]=fibo_series[i-1] + fibo_series[i-2]
    end   
    
    fibo_series
end

print"Enter length of the Fibonancci series : "
input = gets.chomp.to_i

result = fibonancci_series(input)

puts"Required Fibonancci series is : "
puts result.join(', ')