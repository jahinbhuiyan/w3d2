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
        a = Card.new("a".."z".sample)
        return [a,a]
      end

      def place_random_cards
        
        (0...@size/2).each do
          new_c = self.new_card
        new_c.each do |ele|
        
        end
       (0...@size).each do |i|
          row = rand(0...@grid.length)
          col = rand(0...@grid.length)
          pos = [row, col]
          self[pos] = Card.new
        end
      end

      def hidden_cards_grid
        @grid.map do |row|
            row.map do |ele|
                ele = " "
            end
        end
      end

      def won?
        
      end

end