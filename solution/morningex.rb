def piglatin(word)
    initial_vowels = /\A[aeiou]+/.match(word)
    initial_consonants = /\A((y)|(squ)|(qu)|[^aeiouy]+)/.match(word)
    if initial_vowels != nil
        res = word + "way"
    else
        res = word.sub(/\A((y)|(squ)|(qu)|[^aeiouy]+)/, '').to_s + initial_consonants.to_s + "ay"
    end
    res
end

puts piglatin("egg")
puts piglatin("inbox")
puts piglatin("eight")
puts piglatin("happy")
puts piglatin("duck")
puts piglatin("glove")
puts piglatin("yellow")
puts piglatin("rhythm")
puts piglatin("queen")
puts piglatin("squeal")
