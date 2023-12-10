def multiplication_table(range)
    puts "Multiplication Table upto #{range} : "
    puts"----------------"
    (1..range).each do |i|
      (1..10).each do |j|
        result = i*j
        puts "#{i} * #{j} = #{result}"
      end
      puts "----------------------------------------" if i < range
    end
  end
  print "Enter number : "
  input = gets.chomp
  nums = input.split.map(&:to_i)
  multiplication_table(nums[0])