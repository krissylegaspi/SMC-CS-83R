# Kristine Legaspi
# Assignment 10

#define the class RightTurnSignal
class RightTurnsignal
    def initialize(red, yellow, green, right)
        @mRed = red
        @mYellow = yellow
        @mGreen = green
        @mRight = right
    end

    #accessor methods
    def right
        @mRight
    end

    def cycle
        output = to_s()
        puts output
    end

    def to_s
        return "RIGHTTURNSIGNAL\n" + "right going for #@mRight seconds\n" + "right going for #@mRight seconds\n" + "green going for #@mGreen seconds\n" + "yellow going for #@mYellow seconds\n"
    end

end
