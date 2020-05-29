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
             move = corners.sample   #other player took middle on first round
          end
        #If you went first in a corner, take the opposite corner
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




           end
      elsif board.cells[5] == Players::Human.token &&
            corners.any? { |corner| board.cells[corner] == Players::Human.token }




            Game::WIN_COMBINATIONS.select do |combo|

         # First, check whether you have any chances to win, since it doesn't matter whether the opponent has a chance to win if you can win first.
         if combo.select{|i| board.position(i+1) == token}.size == 2 && cmb.any?{|i| board.position(i+1) == " "}
           move = cmb.select{|i| !board.taken?(i+1)}.first.to_i.+(1).to_s





        #check to see if other player has two in a row.


        #iterate through winning combos, if two of the positions include the other player's tokens,
        #put my token in third space







#startegy 1
#go for corner first
#then go for symmetry




  end
end

end



end
