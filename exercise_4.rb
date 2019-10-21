# Develop your work so far to preserve the existing capitalisation of the word
# e.g. Dog  -> Ogday
#      cram -> amcray
#
# Assume words either start with a capital letter or don't — don't worry about
# other formats

def pig_latin(word)

if word[0..0] =~ /[A-Z]/
  is_cap = true
else
  is_cap = false
end

  if word.slice(0) == "a" ||
     word.slice(0) == "e" ||
     word.slice(0) == "i" ||
     word.slice(0) == "o" ||
     word.slice(0) == "u"
     word += "way"

  elsif word.slice(0..1) == "qu"
        word = word.slice(2..word.length) + word.slice(0..1) + "ay"

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
if is_cap == true
  return word.capitalize
else
  return word
end
end


## Tests:

require_relative './helpers/assert_equal'
assert_equal(pig_latin('Dog'), 'Ogday')
assert_equal(pig_latin('cram'), 'amcray')
