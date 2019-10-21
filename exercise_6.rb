# Write the program to reverse the above
# e.g. "Ethay uickqay oxfay umpedjay overway ethay azylay ogday" ->
#      "The quick fox jumped over the lazy dog"

def pig_latin_reverse(word)
  if word.reverse.slice(0..2) == "yaw"
    word = word.reverse.slice(3..word.length)
    return word.reverse

  elsif word == "ethay"
    return "the"
  elsif word == "Ethay"
    return "The"

  else
    first_letter = word.reverse.slice(2)
    word = word.reverse.slice(3..word.length)
    return first_letter + word.reverse
  end
end

def pig_latin_sentence_reverse(sentence)
  new_sentence_array = []
  sentence_array = sentence.split(' ')

  sentence_array.each { |each_word|
      new_sentence_array << pig_latin_reverse(each_word)
    }
  return new_sentence_array.join(" ")
end

input = gets.chomp
puts pig_latin_sentence_reverse(input)

# puts pig_latin_reverse(input)

## Tests:

# require_relative './helpers/assert_equal'
# assert_equal(
#   pig_latin_sentence_reverse('Ethay ickquay oxfay umpedjay overway ethay azylay ogday'),
#   'The quick fox jumped over the lazy dog'
# )
