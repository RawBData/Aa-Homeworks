class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    take_turn until game_over
    game_over_message
    reset_game
  end

  def take_turn
    
      show_sequence
      require_sequence
       if !game_over
        round_success_message
        self.sequence_length += 1
       end

  end

  def show_sequence
    add_random_color
    p seq
    sleep(2)
  end

  def require_sequence
    
    system("clear")
    puts "put colors separated by commas (i.e. green,yellow,blue)"
    
    from_user = gets.chomp.split(',')
    self.game_over = true if from_user != seq
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    system("clear")
    puts "Get it Girrrrrlllllll"
  end

  def game_over_message
    system("clear")
    puts "Darn it!!! GAME OVA!!!!"
    puts "Simon says you only made it #{self.sequence_length} rounds!!!"
    sleep(3)
    puts "Start Again!!!!"
  end

  def reset_game
    self.sequence_length = 1
    self.game_over = false
    self.seq = []
    play
  end
end
