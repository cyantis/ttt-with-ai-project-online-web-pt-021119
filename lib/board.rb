class Board
  attr_accessor :cells

  def initialize
    self.reset!
  end

  def display
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end

  def reset!
    @cells = (Array.new(9, " "))
  end

  def turn_count
    self.cells.count{|token| token == "X" || token == "O"}
  end

  def position(pos)
    self.cells[pos.to_i - 1]
  end

  def full?
    full = self.cells.collect {|c| c == " "}
    !full.include?(true)
  end

  def taken?(pos)
    self.position(pos) == "X" || self.position(pos) == "O"
  end

  def valid_move?(pos)
    (1..9).include?(pos.to_i) && !self.taken?(pos)
  end

  def update(pos, player)
    if self.valid_move?(pos)
      spot = self.position(pos)
      spot = player.token
    end
  end

end
