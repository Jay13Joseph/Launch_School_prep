def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
loop do
  puts ">> Please enter the numerator: "
    numerator = gets.chomp

    break if valid_number?(numerator)
    puts ">> Invalid input. Only integers, please."
end

denominator = nil
loop do
  puts ">> Please enter the denominator: "
    denominator = gets.chomp

    if denominator == '0'
      puts" >> Invalid input. Denominator can't be 0."
    else
      break if valid_number?(denominator)
      puts ">> Invalid input. Only integers, please."
    end
end

result = numerator.to_i / denominator.to_i
puts "#{numerator} / #{denominator} is #{result}."
