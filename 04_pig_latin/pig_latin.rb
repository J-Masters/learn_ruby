def translate phrase
  phrase.split.map do |word|
    i = 0
    while not vowel? word[i,1]
      if (word[i,2] == "qu")
        i += 2
      else
        i += 1
      end
    end
    word[i..-1] + word[0,i] + "ay"
  end.join(" ")
end

def vowel? letter
  vowels = ["a","e","i","o","u"]
  vowels.include? letter
end

#def translate words
#  words.split.map do |word|
#     if word[0] == "a" || word[0] == "e" || word[0] == "i" || word[0] == "o" || word[0] =="u"
#       word = word + "ay"
#     else
#       if word[1] == "a" || word[1] == "e" || word[1] == "i" || word[1] == "o" || word[1] =="u"
#         consonant = word[0]
#         word[0] = ""
#         word = word + consonant + "ay"
#       else
#         consonants = [word[0], word[1]]
#         word[0] = ""
#         word[0] = ""
#         word = word + consonants[0] + consonants[1] + "ay"
#       end
#     end
#   end.join(" ")
#end
