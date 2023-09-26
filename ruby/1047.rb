nums = gets.chomp.split(' ')
h1 = nums[0].to_i
m1 = nums[1].to_i
h2 = nums[2].to_i
m2 = nums[3].to_i

hours = h2 - h1
if hours < 0
  hours = 24 - hours.abs
end

mins = m2 - m1
if mins < 0
  hours -= 1
  mins = 60 - mins.abs
end

if hours < 0
  hours = 24 + hours
end

if hours == 0 && mins == 0
  hours = 24
end

puts "O JOGO DUROU #{hours} HORA(S) E #{mins} MINUTO(S)"