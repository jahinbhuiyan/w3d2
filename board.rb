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
end