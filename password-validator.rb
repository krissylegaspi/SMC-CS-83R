# Kristine Legaspi
# Assignment 6

STDOUT.sync = true
$min_length = 8

def string_valid(string, parameter)
    if string.length < $min_length
        print "The #{parameter} requires at least #{$min_length} letters"
        return false
    end
    if string != string.gsub(/[^0-9a-z]/i, '')
        puts "The #{parameter} can only contain alphanumeric characters"
        return false
    end
    if string !~ /[A-Z]+/
        puts "The #{parameter} requires an uppercase character"
        return false
    end
    if string !~ /[a-z]+/
        puts "The #{parameter} requires a lowercase character"
        return false
    end
    if string !~ /\d+/
        puts "The #{parameter} requires a numeric character"
        return false
    end
    return true
end

puts "\nCS83R Username/Password Validator"
print "Username: "
$username = gets.chomp
print "Password: "
$password = gets.chomp
unless $password.include? $username
    if string_valid($username, "Username") && string_valid($password, "Password")
        puts "The Username/Password combination is valid!"
    end
else
    puts "The Password cannot contain the Username."
end
