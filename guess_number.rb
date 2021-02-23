# frozen_string_literal: true

number_to_guess = rand(1..100)

1.upto(1000) do |try_number|
  puts "Try number: #{try_number}"

  print 'Try to guess number (1 - 100): '
  users_number = gets.to_i

  if number_to_guess == users_number
    print "You guess! #{number_to_guess} \n"
    exit(0)
  elsif  number_to_guess > users_number
    print "Number is bigger.\n"
  elsif  number_to_guess < users_number
    print "Number is smaller.\n"
  end

end
