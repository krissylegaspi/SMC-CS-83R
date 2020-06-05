# Unit 4 Assignment
# Kristine Legaspi

puts "Corsair Hotel Calculator"
while $choice != "n" do
    print "How many nights is your stay: "
    $nights = gets.chomp.to_i
    $weekend = 0
    $cash_night = 0
    $cash_weekend = 0
    $suite = 0
    $resort = 0
    if $nights > 0
        print "Are any of these nights weekend nights (y/n): "
        $user = gets.chomp
        if $user == "y"
            print "How many of these nights are weekend nights: "
            $weekend = gets.chomp.to_i
            if $weekend < 0
                puts "Sorry Charlie!"
                print "Continue (y/n) ?"
                $choice = gets.chomp
                next
            end
        end
        $nights = $nights - $weekend
        $cash_nights = $nights * 150
        $cash_weekend = $weekend * (150 + 50)
        print "Suite desired (y/n): "
        $user1 = gets.chomp
        print "Is this a resort location (y/n): "
        $user2 = gets.chomp
        print $nights
        print " nights at 150\n"
        print $weekend
        print " nights at 200\n"
        if $user1 == "y" 
          $suite = ($cash_nights + $cash_weekend) * 0.20
          print "Suite upgrade $"
          print $suite/($nights + $weekend)
          print " per night\n"
        end
        if $user2 == "y"
          $resort = ($cash_nights + $cash_weekend) * 0.30
          print "Resort fee $"
          print $resort/($nights + $weekend)
          print " per night\n"
        end
        print "Your hotel will cost $"
        print $cash_nights + $cash_weekend + $suite + $resort
        print ". Enjoy your trip!\n"
        print "Continue (y/n)? "
        $choice = gets.chomp
    else
      puts "Sorry Charlie!"
      print "Continue(y/n)? "
      $choice = gets.chomp
    end
end
