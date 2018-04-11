def piglatin(word)
    initial_vowels = /\A[aeiou]+/.match(word)
    initial_consonants = /\A[^aeiouy]+/.match(word)
    if word[0,2] == "qu"
        res = word.slice(2, word.length - 2).concat("quay")
    elsif word[0,3] == "squ"
        res = word.slice(3, word.length - 3).concat("squay")
    elsif initial_vowels != nil
        res = word + "way"
    elsif word[0] == 'y'
        res = word.slice(1, word.length - 1).concat("yay")
    else
        res = word.sub(/\A[^aeiouy]+/, '').to_s + initial_consonants.to_s + "ay"
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
