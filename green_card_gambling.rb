print 'How many times will we gambling? '
gambling_count = gets.strip.to_i

if gambling_count <= 0
  puts 'Number of tries must be integer and more than 0'
  exit(0)
end

print 'Enter You favorite number (from 1 to 50): '
user_favorite_number = gets.strip.to_i

if user_favorite_number <= 0 || user_favorite_number < 1 || user_favorite_number > 50
  puts 'Favorite number must be integer and more than 0 but less than 51'
  exit(0)
end

1.upto(gambling_count) do |loop_counter|
  puts "Game try #{loop_counter}"

  random_number = rand(1..50)

  if random_number == user_favorite_number
    puts 'You won!'
    exit(0)
  end
end

puts 'You lose.'
