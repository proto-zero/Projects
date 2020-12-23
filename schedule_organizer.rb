# The days of the week to be planned, plus the whole week itself
monday = []
tuesday = []
wednesday = []
thursday = []
friday = []
saturday = []
sunday = []

week = {'Monday' => monday, 'Tuesday' => tuesday, 'Wednesday' => wednesday, 'Thursday' => thursday,
        'Friday' => friday, 'Saturday' => saturday, 'Sunday' => sunday}

spread = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday']

# Filling in the individual days
puts 'Input your schedule for Monday:'
a = gets.chomp
while a != ''
  monday.push(a)
  a = gets.chomp
end
puts 'Input your schedule for Tuesday:'
b = gets.chomp
while b != ''
  tuesday.push(b)
  b = gets.chomp
end
puts 'Input your schedule for Wednesday:'
c = gets.chomp
while c != ''
  wednesday.push(c)
  c = gets.chomp
end
puts 'Input your schedule for Thursday:'
d = gets.chomp
while d != ''
  thursday.push(d)
  d = gets.chomp
end
puts 'Input your schedule for Friday:'
e = gets.chomp
while e != ''
  friday.push(e)
  e = gets.chomp
end
puts 'Input your schedule for Saturday:'
f = gets.chomp
while f != ''
  saturday.push(f)
  f = gets.chomp
end
puts 'Input your schedule for Sunday:'
g = gets.chomp
while g != ''
  sunday.push(g)
  g = gets.chomp
end

# Menu screen
puts
puts 'Great!'
puts
puts 'VIEW entire schedule.'
puts 'SORT items by day.'
puts 'EXIT to end program'
puts

answer = gets.chomp

# Loop for each menu choice
while answer != 'exit'

  if answer == 'view'
    puts
    week.each do |cart, bin|
      puts cart, bin.join(', ')
      puts
    end
    
  elsif answer == 'sort'
    puts
    puts 'Which day do you want to see sorted?'
    response = gets.chomp

    while !spread.include?(response)
      puts
      puts 'Please select a day of the week.'
      puts
      response = gets.chomp
    end

    if response == 'monday'
      puts
      puts 'Monday'
      puts monday.sort
      puts
    elsif response == 'tuesday'
      puts
      puts 'Tuesday'
      puts tuesday.sort
      puts
    elsif response == 'wednesday'
      puts
      puts 'Wednesday'
      puts wednesday.sort
      puts
    elsif response == 'thursday'
      puts
      puts 'Thursday'
      puts thursday.sort
      puts
    elsif response == 'friday'
      puts
      puts 'Friday'
      puts thursday.sort
      puts
    elsif response == 'saturday'
      puts
      puts 'Saturday'
      puts saturday.sort
      puts
    elsif response == 'sunday'
      puts
      puts 'Sunday'
      puts sunday.sort
      puts
    end

  else
    puts
    puts 'Please select VIEW, SORT, or EXIT.'
  end

  answer = gets.chomp

end
