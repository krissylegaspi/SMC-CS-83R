# Kristine Legaspi
# Assignment 10

require_relative 'signal'
require_relative 'LeftTurnsignal'
require_relative 'RightTurnsignal'

s = Sygnal.new( 10, 11, 12 )
puts "signal--->\n"
s.cycle( )

l = LeftTurnsignal.new( 20, 21, 22, 10 )
puts "LeftTurnsignal--->\n"
l.cycle( )

r = RightTurnsignal.new( 30, 31, 32, 10 )
puts "RightTurnsignal--->\n"
r.cycle( )