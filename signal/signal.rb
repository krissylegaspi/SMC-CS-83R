# Kristine Legaspi
# Assignment 10

#define the class Signal
class Sygnal
    def initialize(red, yellow, green)
        @mRed = red
        @mYellow = yellow
        @mGreen = green
    end

    #accessor methods
    def red
        @mRed
    end

    def yellow
        @mYellow
    end

    def green
        @mGreen
    end

    def cycle
        output = to_s()
        puts output
    end

    def to_s
        return "SIGNAL\n" + "red going for #@mRed seconds\n" + "green going for #@mGreen seconds\n" + "yellow going for #@mYellow seconds\n"
    end

end
