print "Enter number whose factorial is to be found: "
n = gets.chomp.to_i

def factorial (n)
    if n == 0
    1
  else
    n * factorial(n - 1)
  end
end

fact = factorial(n)
puts "Factorial of #{n} is #{fact}."