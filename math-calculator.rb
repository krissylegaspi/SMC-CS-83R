# Kristine Legaspi
# Assignment 7

STDOUT.sync = true
#squareRootOfI = Math::sqrt( i )

class Math_Calculator

    def prompt
        puts "[N]umbers [A]verage [M]edian [S]tandard Deviation [C]lear [Q]uit:"
        @inputs1=gets.chomp
        testing(@inputs1)
    end

    def testing(inputs)
        case inputs
            when "N" then inn
            when "M" then median
            when "A" then average
            when "S" then deviation
            when "C" then cleared
            when "Q" then quit
        else
            prompt
        end
    end

    def inn
        @arr_inputs = gets.chomp
        input = @arr_inputs.split(" ").map(&:to_i)
        @avrg = (input.inject(:+)/(input.size).to_f)
        input += input.map {@arr_inputs}
        testing @arr_inputs
    end

    def median
        medi = @arr_inputs.split(" ").map(&:to_i)
        medium = medi.sort
        medisize = medium.size
        if medisize.even?
            eve = (medisize) / 2
            puts eve
            @median = ((medium[eve-1] + medium[eve]) / 2.0)
        else
            odd = ((medisize/2).to_i)
            puts odd
            @median = medium[odd]
        end
        puts "The median is: #{@median}"
        prompt
    end

    def average
        puts "The average is: #{@avrg}"
        prompt
    end

    def deviation
        dev = @arr_inputs.split(" ").map(&:to_i);
        sum = 0
        i = 0
        while i < dev.size
            sum += (dev[i] - @avrg)**2
            i += 1
        end
        squareRootOfI = Math::sqrt(sum/(dev.size))
        puts "Standard Deviation: #{squareRootOfI}"
        prompt
    end

    def cleared
        @arr_inputs = []
        prompt
    end

    def quit
        @arr_inputs = []
        prompt
    end

    def quit
        exit
    end
end

calcu = Math_Calculator.new
calcu.prompt
