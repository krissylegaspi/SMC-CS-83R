# Kristine Legaspi
# Assignment 10

#define the class LeftTurnSignal
class LeftTurnsignal
    def initialize(red, yellow, green, left)
        @mRed = red
        @mYellow = yellow
        @mGreen = green
        @mLeft = left
    end

    #accessor methods
    def left
        @mLeft
    end

    def cycle
        output = to_s()
        puts output
    end

    def to_s
        return "LEFTTURNSIGNAL\n" + "red going for #@mRed seconds\n" + "left going for #@mLeft seconds\n" + "green going for #@mGreen seconds\n" + "yellow going for #@mYellow seconds\n"
    end
    
end