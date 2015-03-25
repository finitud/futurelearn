module TicTacToe
  class Game

    attr_accessor :board

    def initialize
      self.board = TicTacToe::Board.new
    end

  end
end