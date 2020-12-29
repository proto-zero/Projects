# Baseline Test from Blade Runner 2049
class Baseline

# Test Score Variable
  def initialize
    @score = 0

# Start-up Screen
    puts 'Enter your name:'
    @name = gets.chomp.capitalize
    system("clear")
    puts 'Officer ' + @name + ', let\'s begin.'
    puts 'Ready?'
    response = gets.chomp.capitalize

    if response != 'Yes'
      puts
      puts 'Fine.'
      exit
    end

    system("clear")
    puts 'Recite your baseline'
    baseline = gets.chomp
    questions
  end

# Question formats
  def question1 x
    system("clear")
    puts x
    answer1 = gets.chomp.downcase
    if answer1 == 'cells'
      @score = @score + 1
    end
  end

  def question2 x
    system("clear")
    puts x
    answer2 = gets.chomp.downcase
    if answer2 == 'interlinked'
      @score = @score + 1
    end
  end

  def question3 x
    system("clear")
    puts x
    answer3 = gets.chomp.downcase
    if answer3 == 'within cells interlinked'
      @score = @score + 1
    end
  end

  def question4 x
    system("clear")
    puts x
    answer4 = gets.chomp.downcase
    answer5 = gets.chomp.downcase
    answer6 = gets.chomp.downcase
    if answer4 == 'within cells interlinked'
      @score = @score + 1
    end
    if answer5 == 'within cells interlinked'
      @score = @score + 1
    end
    if answer6 == 'within cells interlinked'
      @score = @score + 1
    end
  end

  def question5 x
    system("clear")
    puts x
    answer7 = gets.chomp.downcase
    if answer7 == 'dreadfully'
      @score = @score + 1
    end
  end

  def question6 x
    system("clear")
    puts x
    answer8 = gets.chomp.downcase
    if answer8 == 'distinct'
      @score = @score + 1
    end
  end

  def question7 x
    system("clear")
    puts x
    answer9 = gets.chomp.downcase
    if answer9 == 'dreadfully distinct'
      @score = @score + 1
    end
  end

  def question8 x
    system("clear")
    puts x
    answer10 = gets.chomp.downcase
    if answer10 == 'dark'
      @score = @score + 1
    end
  end

  def question9 x
    system("clear")
    puts x
    answer11 = gets.chomp.downcase
    if answer11 == 'within one stem'
      @score = @score + 1
    end
  end

  def question10 x
    system("clear")
    puts x
    answer12 = gets.chomp.downcase
    if answer12 == 'and dreadfully distinct'
      @score = @score + 1
    end
  end

  def question11 x
    system("clear")
    puts x
    answer13 = gets.chomp.downcase
    if answer13 == 'against the dark'
      @score = @score + 1
    end
  end

  def question12 x
    system("clear")
    puts x
    answer14 = gets.chomp.downcase
    if answer14 == 'a tall white fountain played'
      @score = @score + 1
    end
  end

# Opening Questions Text
  def questions
    question1 'Cells.'
    question1 'Have you ever been in an institution? Cells.'
    question1 'Do they keep you in a cell? Cells.'
    question1 'When you\'re not performing your duties do they keep you in a little box? Cells.'

    question2 'Interlinked.'
    question2 'What\'s it like to hold the hand of someone you love? Interlinked.'

# Divistion point between Good Questions and Rough Questions
    if @score < 6
      rough
    else
      good
    end
  end

# Good Questions Text
  def good
    question2 'Do they teach you how to feel, finger to finger? Interlinked.'
    question2 'Do you long for having your heart interlinked? Interlinked.'
    question2 'Do you dream about being interlinked?'
    question2 'What\'s it like to hold your child in your arms? Interlinked.'
    question2 'Do you feel that there\'s a part of you that\'s missing? Interlinked.'

    question3 'Within Cells Interlinked.'

    question4 'Why don\'t you say that three times. Within Cells Interlinked.'
    total
  end

# Rough Questions Text
  def rough
    question3 'Within Cells Interlinked.'
    question5 'Dreadfully.'
    question5 'What\'s it like to be filled with dread? Dreadfully.'
    question6 'Do you like being separated from other people? Distinct.'
    question7 'Dreadfully Distinct.'
    question8 'Dark.'
    question3 'Within Cells Interlinked.'
    question9 'Within One Stem.'
    question10 'And Dreadfully Distinct.'
    question11 'Against The Dark.'
    question12 'A Tall White Fountain Played.'
    total
  end


# End Score Results
  def total
    system("clear")
    puts 'We\'re done here.'
    puts
    if @score >= 15
      puts 'Constant ' + @name + '. You can pick up your bonus.'
    elsif @score < 15
      puts '...'
      puts 'You\'re not even close to baseline.'
    end
    puts
    puts 'Your Score:     ' + @score.to_s
  end

end

Baseline.new


# recite your baseline
  # a blood black nothingness began to spin
  # a system of cells interlinked within cells interlinked within cells interlinked within one stem
  # and dreadfully distinct against the dark, a tall white fountain played
