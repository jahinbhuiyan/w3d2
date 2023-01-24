class Card
    attr_reader :value
    
    def initialize(value)
        @value = value
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