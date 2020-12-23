# Logon screen
puts 'LOGON:'
puts
login = gets.chomp.upcase

# Logon requires a password
while login != 'JOSHUA'
  if login == 'HELP LOGON'
    puts
    puts 'HELP NOT AVAILABLE'
    puts
    puts 'LOGON:'
    puts
  elsif login != 'JOSHUA'
    puts
    puts 'IDENTIFICATION NOT RECOGNIZED BY SYSTEM'
    puts '--CONNECTION TERMINATED--'
    puts
    return
  end
  login = gets.chomp.upcase
end

# Introduction
puts
puts 'GREETINGS PROFESSOR FALKEN.'
puts

gets

puts
puts 'HOW ARE YOU FEELING TODAY?'
puts

gets

puts
puts 'EXCELLENT. IT\'S BEEN A LONG TIME. CAN YOU EXPLAIN THE REMOVAL OF'
puts 'YOUR USER ACCOUNT ON JUNE 23 1973?'
puts

# Another passphrase
mistakes = gets.chomp.upcase
if !mistakes.include?('MISTAKE')
  puts
  puts 'IDENTIFICATION NOT RECOGNIZED BY SYSTEM'
  puts '--CONNECTION TERMINATED--'
  puts
  return
end

# Game invitation
puts
puts 'YES THEY DO.'
puts
puts 'SHALL WE PLAY A GAME?'
puts

# Global Thermonuclear War part 01
game = gets.chomp.upcase
if !game.include?('GLOBAL THERMONUCLEAR WAR')
  puts
  puts 'IDENTIFICATION NOT RECOGNIZED BY SYSTEM'
  puts '--CONNECTION TERMINATED--'
  puts
  return
end

puts
puts 'WOULDN\'T YOU PREFER A GOOD GAME OF CHESS?'
puts

# Global Thermonuclear War part 02
answer = gets.chomp.upcase
if !answer.include?('GLOBAL THERMONUCLEAR WAR')
  puts
  puts 'IDENTIFICATION NOT RECOGNIZED BY SYSTEM'
  puts '--CONNECTION TERMINATED--'
  puts
  return
end

# End
puts
puts 'FINE.'
puts
