def substrings(sentence, dictionary)
  sentence = sentence.to_s.split(' ')
  occurrences = Hash.new(0)
  sentence.each do |word|
    dictionary.to_a.each do |dictionary_word|
      occurrences[dictionary_word] += 1 if word.downcase.include? dictionary_word
    end
  end
  puts occurrences
end

substrings('below', %w[below down go going horn how howdy it i low own part partner sit])

substrings("Howdy partner, sit down! How's it going?", %w[below down go going horn how howdy it i low own part partner sit])
