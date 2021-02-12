print 'Enter first value: '
first_value = gets.chomp.to_f

print 'Enter second value: '
second_value = gets.chomp.to_f

print 'Enter operation (/, *, +, -): '
operation = gets.strip

calculation_result = 0

# puts operation.inspect

case operation
when '+'
  calculation_result = first_value + second_value
when '-'
  calculation_result = first_value - second_value
when '/'
  if second_value.zero?
    puts 'Division on zero is not allowed'
    exit(0)
  end

  calculation_result = first_value / second_value

when '*'
  calculation_result = first_value * second_value
else
  puts 'Unknown operation'
  exit(0)
end

puts "Result: #{calculation_result}"