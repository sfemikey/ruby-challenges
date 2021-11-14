05011982
0 + 5 + 0 + 1 + 1 + 9 + 8 + 2 = 26
2 + 6 = 8

#1
puts "What is your birthdate? Write it like this: MMDDYYYY"

#2
birthdate = gets

#3
number = birthdate[0].to_i +
birthdate[1].to_i +
birthdate[2].to_i +
birthdate[3].to_i +
birthdate[4].to_i +
birthdate[5].to_i +
birthdate[6].to_i +
birthdate[7].to_i

#4
number = number.to_s
number = number[0].to_i +
number[1].to_i

#5
if number > 9
  number = number.to_s
  number = number[0].to_i +
  number[1].to_i
end

case number
when 1
  puts "Your numerology number is #{number}.\nOne is the leader. The number one indicates the ability to stand alone, and is a strong vibration.
  Ruled by the Sun."
When 2
  puts "Your numerology number is #{number}.\nThis is teh mediator and peace-lover. The number two indicates the desire for harmony. It is gentle,
  considerate, and sensitive vibration. Ruled by the Moon."
When 3
  puts "Your numerology number is #{number}.\nNumber Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic,
  Three's enjoy life and have a good sense of humor. Ruled by Jupiter."
When 4
  puts "Your numerology number is #{number}.\nThis is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful.
  Ruled by Uranus."
When 5
  puts "Your numerology number is #{number}.\nThis is the freedom lover. The number five is an intellectual vibration. These are 'idea' people with
  a love of variety and the ability to adapt to most situations. Ruled by Mercury."
When 6
  puts "Your numerology number is #{number}.\nThis is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
When 7
  puts "Your numerology number is #{number}.\nThis is the deep thinker. The number seven is a spiritual vibration. These people are not very attached
  to material things, are introspective, and generally quiet. Ruled by Neptune."
When 8
  puts "Your numerology number is #{number}.\nThis is the manager. Number eight is a strong, successful, and material vibration. Ruled by Saturn."
When 9
  puts "Your numerology number is #{number}.\nThis is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled
  by Mars."
else
  puts "Sorry! Your Birth Path number is not 1-9! Please try again!"
end
