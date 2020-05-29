module Players

  class Computer < Player

    def move(board)
      move = nil
      corners = ["1", "3", "7", "9"]
        #If first: go to corner first, pick randomly
      if board.turn_count == 0 #first round
         move = corners.sample
        #If second: middle first if not taken
      elsif board.turn_count == 1 #second round
          unless !board.taken?("5")
             move = "5"
          else
             move = corners.sample   #other player in middle on first round, corners free
          end
        #If you went first in a corner, take the opposite corner
        #If you went first in middle, take a corner
      elsif board.turn_count == 2 && board.cells[5] != self.token
           if board.cells[0] == self.token
              move = "9"
           elsif board.cells[2] == self.token
              move = "7"
           elsif board.cells[6] == self.token
              move = "3"
           elsif board.cells[8] == self.token
              move = "1"
           else
              free_corners = corners.select { |corner| corner == " " }
              move = free_corners.sample

           end
           #Take another corner + block
           #Block the other player
       elsif board.turn_count == 3
           GAME::WIN_COMBINATIONS.each do |combo|
             binding.pry
             board.cells.combo[0] == board.cells.combo[1]
           end



  end
end

end



end
