# Kristine Legaspi
# Assignment 9
# Class creation, define the class Holiday

#define the class Holiday
class Holiday
    def initialize(name, day, month)
        @mName = name
        @mDay = day
        @mMonth = month
    end

    # accessor methods
    def name
        @mName
    end

    def day
        @mDay
    end

    def month
        @mMonth
    end

    def sameMonth?(h)
        @mMonth == h.month
    end

    def sameDay?(h)
        @mDay == h.day
    end

    def to_s
        "#@mName falls on #@mMonth #@mDay"
    end

end

