user_age_limit_allow_to_play = 18

print 'How old are You?: '
user_age = gets.to_i

print 'Do You want to play? (Y/N): '
user_wish = gets.strip.chomp.capitalize

if user_age >= user_age_limit_allow_to_play && user_wish == 'Y'
  puts 'Good, let\'s play'

  money = 100

  puts 'Press Enter to start the game.'
  gets

  x = rand(0..5)
  y = rand(0..5)
  z = rand(0..5)

  if x.zero? && y.zero? && z.zero?
    puts 'Money is zero'
    money = 0
  end

  if x == 1 && y == 1 && z == 1
    puts 'Add $10 to You balance.'
    money += 10
  end

  if x == 2 && y == 2 && z == 2
    puts 'Add $10 to You balance.'
    money += 20
  end

  if x == 3 && y == 3 && z == 3
    puts 'Add $10 to You balance.'
    money += 30
  end

  if x == 5 && y == 5 && z == 5
    puts 'Add $50 to You balance.'
    money += 50
  end

  puts "Money balance: $#{money}"

end
