letters = ('A'..'Z').to_a

puts 'Enter the to-be-encrypted text'
to_be_encrypted = gets

puts 'Enter the shift factor'
shift_factor = gets

to_be_encrypted = to_be_encrypted.chars.map do |i|
  if i =~ /[A-Za-z]/
    is_upcase = i.upcase == i
    offset_factor = letters.find_index(i.upcase) + shift_factor.to_i
    new_letter = letters[offset_factor > letters.length ? offset_factor - letters.length : offset_factor]
    is_upcase ? new_letter.upcase : new_letter.downcase
  else
    i
  end
end

puts to_be_encrypted.join('')
