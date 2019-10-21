# Develop your proram to handle multiple consonants at the start of words.
#
# The rule is:
# If the word starts with one or more consonants, move them to the end.
# e.g. cram     -> amcray
#      sprinkle -> inklespray
#
# Still assume the words are lowercase.

def pig_latin(word)
  if word.slice(0) == "a" ||
     word.slice(0) == "e" ||
     word.slice(0) == "i" ||
     word.slice(0) == "o" ||
     word.slice(0) == "u"
     word += "way"

  elsif word.slice(1) == "a" ||
        word.slice(1) == "e" ||
        word.slice(1) == "i" ||
        word.slice(1) == "o" ||
        word.slice(1) == "u"
        word = word.slice(1..word.length) + word.slice(0) + "ay"

  elsif word.slice(2) == "a" ||
        word.slice(2) == "e" ||
        word.slice(2) == "i" ||
        word.slice(2) == "o" ||
        word.slice(2) == "u"
        word = word.slice(2..word.length) + word.slice(0..1) + "ay"

  elsif word.slice(3) == "a" ||
        word.slice(3) == "e" ||
        word.slice(3) == "i" ||
        word.slice(3) == "o" ||
        word.slice(3) == "u"
        word = word.slice(3..word.length) + word.slice(0..2) + "ay"

  end
return word
end


## Tests:

require_relative './helpers/assert_equal'
assert_equal(pig_latin('cram'), 'amcray')
assert_equal(pig_latin('sprinkle'), 'inklespray')
assert_equal(pig_latin('dog'), 'ogday')
assert_equal(pig_latin('up'), 'upway')
