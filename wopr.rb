class WOPR

# Logon Screen
  def initialize
    system("clear")
    puts 'LOGON:'
    puts
    login = gets.chomp.upcase
    password login
  end

# Logon requires a password
  def password x
    while x != 'JOSHUA'
      if x == 'HELP LOGON'
        puts
        puts 'HELP NOT AVAILABLE'
        puts
        puts 'LOGON:'
        puts
      elsif x != 'JOSHUA'
        puts
        puts 'IDENTIFICATION NOT RECOGNIZED BY SYSTEM'
        puts '--CONNECTION TERMINATED--'
        puts
        exit
      end
      x = gets.chomp.upcase
    end
    introduction
  end

# Introduction to WOPR
  def introduction
    system("clear")
    sleep 1
    5.times do
      puts '...'
    end
    sleep 1
    system("clear")
    puts
    sleep 1
    puts 'GREETINGS PROFESSOR FALKEN.'
    puts

    gets.chomp

    sleep 1
    puts
    puts
    puts 'HOW ARE YOU FEELING TODAY?'
    puts

    gets.chomp

    sleep 1
    puts
    puts
    puts 'EXCELLENT. IT\'S BEEN A LONG TIME. CAN YOU EXPLAIN THE REMOVAL OF'
    puts 'YOUR USER ACCOUNT ON JUNE 23 1973?'
    puts
    response = gets.chomp.upcase
    mistake response
  end

# Another passphrase
  def mistake x
    if !x.include?('MISTAKE')
      sleep 1
      puts
      puts
      puts 'IDENTIFICATION NOT RECOGNIZED BY SYSTEM'
      puts '--CONNECTION TERMINATED--'
      puts
      exit
    end
    invitation
  end

# Game invitation
  def invitation
    sleep 1
    puts
    puts
    puts 'YES THEY DO.'
    sleep 2
    puts
    puts 'SHALL WE PLAY A GAME?'
    puts

# Global Thermonuclear War part 01
    game = gets.chomp.upcase
    if !game.include?('GLOBAL THERMONUCLEAR WAR')
      sleep 1
      puts
      puts
      puts 'IDENTIFICATION NOT RECOGNIZED BY SYSTEM'
      puts '--CONNECTION TERMINATED--'
      puts
      exit
    end

    sleep 1
    puts
    puts
    puts 'WOULDN\'T YOU PREFER A GOOD GAME OF CHESS?'
    puts

# Global Thermonuclear War part 02
    answer = gets.chomp.upcase
    if !answer.include?('GLOBAL THERMONUCLEAR WAR')
      sleep 1
      puts
      puts
      puts 'IDENTIFICATION NOT RECOGNIZED BY SYSTEM'
      puts '--CONNECTION TERMINATED--'
      puts
      exit
    end

# End
    sleep 1
    puts
    puts
    puts 'FINE.'
    puts
  end
end

WOPR.new
