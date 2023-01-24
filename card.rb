class Card
    attr_reader :face_value, :face_up
    
    def initialize
        @face_value = ("a".."z").sample
        @face_up = false
    end

    def hide
        @face_up = false
    end

    def reveal
        @face_up = true
    end
    
    def ==(same_value)
        if self.value == same_value
            self.reveal
        else
            self.hide
        end
    end
    
end