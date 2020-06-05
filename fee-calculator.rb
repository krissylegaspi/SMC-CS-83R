# Unit 5 Assignment
# Kristine Legaspi

puts "SMC Fee Calculator"
loop do
  print "Enter number of units enrolled: "
  $number_of_units = gets.chomp.to_i
  $as_sticker = 0
  $id_card = 0
  $park_winter_summer = 0
  $park_fall_spring = 0
  print "Is this Fall[0], Winter[1], Spring[2], or Summer[3] session: "
  $session = gets.chomp.to_i
  if $session == 0 || $session == 2
    $student_services_fee = 53.50
  else $session == 1 || $session == 3
    $student_services_fee = 50.50
  end
  puts "Are you a state resident[0] or not[1]: "
  $resident = gets.chomp.to_i
  if $resident == 0
    $enrollment_fee = 46
  else $resident == 1
    $enrollment_fee = 370
  end
  puts "Want a decal? [y/n]: "
  $decal = gets.chomp
    if $decal == "y"
      $park_winter_summer = 45
      $park_fall_spring = 85
    else $decal == "n"
      $park_winter_summer = 0
      $park_fall_spring = 0
    end
  puts "Want an AS sticker? [y/n]: "
  $as_sticker = gets.chomp
    if $as_sticker == "y"
      $sticker_fee = 0
    else $as_sticker == "n"
      $sticker_fee = -19.50
    end
  puts "Want an ID card? [y/n]: "
  $id_card = gets.chomp
    if $id_card == "y"
      $id_fee = 0
    else $id_card == "n"
      $id_fee = -13
    end
  if $session == 0
    print "For Fall semester, your total fees are $"
    print $student_services_fee + ($enrollment_fee * $number_of_units) + $park_fall_spring + $sticker_fee + $id_fee
    print "\n"
  end
  if $session == 2
    print "For Spring semester, your total fees are $"
    print $student_services_fee + ($enrollment_fee * $number_of_units) + $park_fall_spring + $sticker_fee + $id_fee
    print "\n"
  end
  if $session == 1
    print "For Winter semester, your total fees are $"
    print $student_services_fee + ($enrollment_fee * $number_of_units) + $park_winter_summer + $sticker_fee + $id_fee
    print "\n"
  end
  if $session == 3
    print "For Summer semester, your total fees are $"
    print $student_services_fee + ($enrollment_fee * $number_of_units) + $park_winter_summer + $sticker_fee + $id_fee
    print "\n"
  end
  puts "Wanna continue? [y/n]: "
  $choice = gets.chomp
  if $choice =="n"
    break
  end
end
