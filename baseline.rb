# Baseline Test from Blade Runner 2049
class Baseline

# Test Score Variable
  def initialize
    @score = 0

# Start-up Screen
    puts 'Enter your name:'
    name = gets.chomp.capitalize
    system("clear")
    puts 'Officer ' + name + ', let\'s begin.'
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

# Question Texts
  def questions
    question1 'Cells.'
    question1 'Have you ever been in an institution? Cells.'
    question1 'Do they keep you in a cell? Cells.'
    question1 'When you\'re not performing your duties do they keep you in a little box? Cells.'

    question2 'Interlinked.'
    question2 'What\'s it like to hold the hand of someone you love? Interlinked.'
    question2 'Do they teach you how to feel, finger to finger? Interlinked.'
    question2 'Do you long for having your heart interlinked? Interlinked.'
    question2 'Do you dream about being interlinked?'
    question2 'What\'s it like to hold your child in your arms? Interlinked.'
    question2 'Do you feel that there\'s a part of you that\'s missing? Interlinked.'

    question3 'Within Cells Interlinked.'

    question4 'Why don\'t you say that three times. Within Cells Interlinked.'

    system("clear")
    puts 'We\'re done here.'
    puts
    total
  end

# End Score Results
  def total
    if @score >= 12
      puts 'Constant ' + name + '. You can pick up your bonus.'
    elsif @score < 11
      puts '...'
      puts 'You\'re not even close to baseline.'
    end
    puts @score
  end

end

Baseline.new


# recite your baseline
  # a blood black nothingness began to spin
  # a system of cells interlinked within cells interlinked within cells interlinked within one stem
  # and dreadfully distinct against the dark, a tall white fountain played
