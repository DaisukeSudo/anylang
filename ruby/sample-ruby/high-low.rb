random = Random.new()
answer = random.rand(10)
puts 'Please enter a number from 0 to 9'

while true do
  num = gets.to_i
  puts "Your selected number is #{num}"
  if num == answer
    puts 'Congrats! Is the correct answer!'
    break
  elsif num < answer
    puts "It\'s smaller"
  else
    puts "It\'s bigger"
  end
end
