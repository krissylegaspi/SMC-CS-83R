# Kristine Legaspi
# Assignment 8

puts "Enter Data: "
g = gets.chomp
h = Hash.new

g.each_char { |word|
if (word != ' ')
    if h.has_key?(word)
        h[word] = h[word] + 1
    else
        h[word] = 1
    end
end
}

h.sort { |a,b| a[0] <=> b[0] }.each { |letter|
    str = ""
    $i = 1
    begin
        str = str + "*"
        $i += 1
    end until $i > letter[1]
        puts "\"#{letter[0].capitalize}\ - #{letter[1]} - #{str}"
}
