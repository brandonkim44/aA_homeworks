class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { Array.new }
    place_stones
  end

  def place_stones
    @cups.each_with_index do |cup, idx|
      unless idx == 16 || idx == 13
        4.times do
          cup << :stone
        end
      end
    end
  end

  def valid_move?(start_pos)
    raise RuntimeError.new("Invalid starting cup") unless start_pos.between?(0,12)
    raise RuntimeError.new("Starting cup is empty") if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    cup_idx = start_pos
    cup = @cups[start_pos]
    i = 0
    until cup.empty?
      stone = cup.pop
      @cup[start_pos+i] << stone
      i += 1
    end

    self.render
    next_turn(cup_idx)
  end

  def next_turn(ending_cup_idx)
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif !@cups[ending_cup_idx].empty?
      :switch
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    (@cups[0..5].all? { |cup| cup.empty? }) || (@cups[7..12].all? { |cup| cup.empty? })
  end

  def winner
    
  end
end
