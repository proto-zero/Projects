# Starship Bridge Systems Manager
class Starship

# Ship Variables
  def initialize
    @shields    = false
    @phasers    = false
    @photons    = false
    @alert      = 'No Alert'
    @engines    = 'Full Stop'
    @sensors    = []
    @shipname   = ''
    @captname   = ''
    @lw         = 60

# Startup Screen
    puts
    puts 'Bridge Systems Activated'
    puts
    puts 'Now Calibrating...'
    5.times do puts '...'
    end
    puts
    puts 'Calibration Complete'
    puts

# Name Input
    puts 'Enter Ship\'s Name:'
    @shipname = gets.chomp
    puts
    puts 'Enter Captain\'s Name:'
    @captname = gets.chomp
    puts
    puts
    puts ('Welcome Captain ' + @captname.capitalize + ' to the USS ' + @shipname.capitalize + '.').center @lw
    status
  end

# Status Screen of Ship's Systems
  def status
    puts
    if @phasers
      puts 'Phasers:                    Armed'
    else
      puts 'Phasers:              Disarmed'
    end

    if @photons
      puts 'Photon Torpedoes:           Armed'
    else
      puts 'Photon Torpedoes:     Disarmed'
    end

    if @shields
      puts 'Shields:                    Raised'
    else
      puts 'Shields:              Lowered'
    end

    puts 'Alert:                ' + @alert
    puts 'Engines:              ' + @engines

    if @sensors == []
      puts 'Sensors               None Selected'
    else
      puts 'Sensors:              ' + @sensors.join(', ')
    end

    select
  end

# Selection of various Ship's Systems
  def select
    puts
    puts 'Select System:'
    puts 'Phasers, Torpedoes, Shields, Alerts, Engines, Sensors, Exit'
    answer = gets.chomp.downcase

    while answer != 'exit'
      puts

# Phasers
      if answer.include?('phaser')
        if @phasers
          puts 'Phasers are Disarmed.'.center @lw
          @phasers = false
        else
          puts 'Phasers are Armed and Ready.'.center @lw
          @phasers = true
        end

# Torpedoes
      elsif answer.include?('torpedo')

        if @photons
          puts 'Photon Torpedoes are Disarmed'.center @lw
          @photons = false
        else
          puts 'Photon Torpedoes are Armed and Ready.'.center @lw
          @photons = true
        end

# Shields
      elsif answer.include?('shield')

        if @shields
          puts 'Lowering Shields.'.center @lw
          @shields = false
        else
          puts 'Raising Shields.'.center @lw
          @shields = true
        end

# Alerts
      elsif answer.include?('alert')
        alerts = ['no alert', 'yellow alert', 'red alert']
        puts 'Select Alert Status:'
        puts 'No Alert, Yellow Alert, Red Alert'
        response = gets.chomp.downcase

        while !alerts.include?(response)
          puts 'Command Not Recognized.'.center @lw
          response = gets.chomp.downcase
        end
        puts

        if response == 'no alert'
          puts 'Alert Status set to No Alert.'.center @lw
          @alert = 'No Alert'
        elsif response == 'yellow alert'
          puts 'Alert Status set to Yellow Alert.'.center @lw
          @alert = '   Yellow Alert'
        elsif response == 'red alert'
          puts 'Alert Status set to Red Alert.'.center @lw
          @alert = '      Red Alert'
        end

# Engines
      elsif answer.include?('engine')
        engines = ['impulse', 'warp']
        puts 'Select Engine:'
        puts 'Impulse, Warp'
        response2 = gets.chomp.downcase

        while !engines.include?(response2)
          puts 'Command Not Recognized.'.center @lw
          response2 = gets.chomp.downcase
        end
        puts

# Impulse Engine Selection
        if response2 == 'impulse'
          speed = ['full stop', '1/3', '1/2', '2/3', 'full impulse']
          puts 'Select Impulse Speed:'
          puts 'Full Stop, 1/3, 1/2, 2/3, Full Impulse'
          response3 = gets.chomp.downcase

          while !speed.include?(response3)
            puts 'Command Not Recognized.'.center @lw
            response3 = gets.chomp.downcase
          end
          puts

# Impulse Engine Speeds
          if response3 == 'full stop'
            puts 'Impulse Engines at Full Stop.'.center @lw
            @engines = 'Full Stop'
          elsif response3 == '1/3'
            puts 'Impulse Engines at 1/3.'.center @lw
            @engines = ' 1/3 Impulse'
          elsif response3 == '1/2'
            puts 'Impulse Engines at 1/2.'.center @lw
            @engines = '  1/2 Impulse'
          elsif response3 == '2/3'
            puts 'Impulse Engines at 2/3.'.center @lw
            @engines = '    2/3 Impulse'
          elsif response3 == 'full impulse'
            puts 'Impulse Engines All Ahead Full.'.center @lw
            @engines = '      Full Impulse'
          end

# Warp Engine Selection
        elsif response2 == 'warp'
          warp = 1..9
          puts 'Select Warp Speed:'
          puts '1 - 9'
          response4 = gets.chomp.to_i

          while !warp.include?(response4)
            puts 'Command Not Recognized.'.center @lw
            response4 = gets.chomp.to_i
          end
          puts

# Warp Engine Speeds
          puts 'Warp Engines Engaged.'.center @lw
          puts ('Now at Warp ' + response4.to_s + '.').center @lw
          @engines = '       Warp ' + response4.to_s
        end

# Sensors
      elsif answer.include?('sensor')
        sensorlist = ['Antiproton Beam', 'Geological Scan', 'High Resolution Scan', 'Internal Scan',
                      'Long Range Sensor Scan', 'Magneton Scan', 'Navigational Scan',
                      'Multiphasic Scan', 'Subspace Differential Pulse', 'Inverse Tachyon Pulse']
        puts 'Select Sensor Array:'
        sensorlist.each do |x|
          puts x
        end
        puts
        response4 = (gets.chomp).split.map(&:capitalize).join(' ')

        while !sensorlist.include?(response4)
          puts 'Command Not Recognized.'.center @lw
          response4 = (gets.chomp).split.map(&:capitalize).join(' ')
        end
        puts

        if !@sensors.include?(response4)
          puts (response4 + ' Activated.').center @lw
          @sensors.push(response4)
        elsif @sensors.include?(response4)
          puts (response4 + ' Deactivated.').center @lw
          @sensors.delete(response4)
        end

# Else
      else
        puts 'Command Not Recognized.'.center @lw
      end

      status
    end
    exit
  end
end

Starship.new
