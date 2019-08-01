class Player

  def token
    Board.turn_count % 2 == 0 ? "X" : "O"
  end

end
