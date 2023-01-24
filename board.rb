require_relative "card"

class Board

    def self.print_grid(arr)
        arr.each do |row|
          puts row.join(" ")
        end
      end
    
      def initialize(n)
        @grid = Array.new(n) { Array.new(n, " ") }
        @size = n * n
      end

      def [](pos)
        row, col = pos
        @grid[row][col]
      end
    
      def []=(pos, val)
        row, col = pos
        @grid[row][col] = val
      end

      def new_card
        arr = []
         while arr.length < @size
            char = ("a".."z").to_a.sample
            
            if !arr.include?(char)
              arr << char 
              arr << char 
            end
         end
         arr.map { |char| Card.new(char) }.shuffle
      end

      def place_random_cards
        new_c = self.new_card
        (0...@grid.length).each do |row|
          (0...@grid.length).each do |col|
            # row = rand(0...@grid.length)
            # col = rand(0...@grid.length)
            pos = [row, col]
            self[pos] = new_c.pop
          end
        end
      end

      def hidden_cards_grid
        @grid.map do |row|
            row.map do |ele|
                " "
            end
        end
      end

      def won?
        temp = @grid.flatten
        if !temp.include?(" ")
          return true
          puts "you won"
        else
          false
        end
      end

      def get_move
        puts "enter a position with coordinates separeted with a space like 1 2"
        guessed_pos = gets.chomp.split.map(&:to_i)
      end

      def reveal_card(pos)
        if self[pos].face_up == false
          self[pos].reveal
          return true
        else
          puts "card already revealed."
          return false
        end
      end
end