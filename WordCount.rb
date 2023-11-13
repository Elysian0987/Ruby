def word_count(input)
    words = input.split
    word_count = words.length
    puts "Word count is #{word_count}"
  end
  
  print "Enter sentence(s): "
  user_input = gets.chomp
  word_count(user_input)  