# Write a program that takes a word and returns the pig latin version.
# Here are the (simplified) rules of pig latin:
#
# If the word starts with consonant, move it to the end and then add 'ay'
# Or, if the word starts with a vowel, add 'way' to the end
# e.g. dog  -> ogday
#      up   -> upway
#
# Don't worry about handling multiple consonants
# Assume the words are lowercase.
# Assume your user is a developer — e.g. you don't need to write a user interface.

def pig_latin(word)
  if word.slice(0) == "a" ||
     word.slice(0) == "e" ||
     word.slice(0) == "i" ||
     word.slice(0) == "o" ||
     word.slice(0) == "u"
     word += "way"
  else
    word = word.slice(1..word.length) + word.slice(0) + "ay"
  end
return word
end
puts pig_latin("bobby")



## Tests:

require_relative './helpers/assert_equal'
assert_equal(pig_latin('dog'), 'ogday')
assert_equal(pig_latin('up'), 'upway')
