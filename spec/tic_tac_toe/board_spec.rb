require 'tic_tac_toe'

module TicTacToe

  describe 'Board' do

    it 'is empty when created' do
      empty_board = TicTacToe::Board.new
      expect(empty_board.grid).to eq('---------')
    end

    context 'on an empty cell' do
      before(:example) { @board = TicTacToe::Board.new }

      it 'accepts X tokens on cell A1' do
        @board.add_token('X', 'A1')
        expect(@board.grid).to eq('X--------')
      end

      it 'accepts X tokens on cell B2' do
        @board.add_token('X', 'B3')
        expect(@board.grid).to eq('-----X---')
      end

      it 'accepts O tokens on cell A1' do
        @board.add_token('O', 'A1')
        expect(@board.grid).to eq('O--------')
      end

      it 'accepts O tokens on cell B2' do
        @board.add_token('O', 'B3')
        expect(@board.grid).to eq('-----O---')
      end

      it 'ignores invalid tokens' do
        @board.add_token('J', 'A1')
        expect(@board.grid).to eq(TicTacToe::Board.new.grid)
      end

      it 'ignores invalid positions' do
        @board.add_token('X', 'J8')
        expect(@board.grid).to eq(TicTacToe::Board.new.grid)
      end
    end

  end

end