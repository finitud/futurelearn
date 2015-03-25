module TicTacToe
  class Board

    attr_accessor :grid

    def initialize
      self.grid = '-' * 9
    end

    def add_token(token_type, cell)
      return unless token_type == 'X' or token_type == 'O'
      return unless valid_position?(cell)
      self.grid[index_from_cell_name(cell)] = token_type
    end

    private
      def valid_position?(cell)
        return false unless ('A'..'C') === cell[0]
        return false unless ('1'..'3') === cell[1]
        return true
      end

      def index_from_cell_name(cell_name)
        base = cell_name[1].to_i - 1
        case cell_name[0]
        when 'A'
          return base
        when 'B'
          return base + 3
        when 'C'
          return base + 6
        end
      end
  end
end