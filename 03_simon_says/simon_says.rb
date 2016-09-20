def echo words
  return words
end

def shout words
  return words.upcase
end

def repeat *args
  if args.length == 1
    return "#{args[0]} #{args[0]}"
  else
    return "#{args[0]} " * (args[1].to_i - 1) + args[0]
  end
end

def start_of_word word, number
  return word[0..(number - 1)]
end

def first_word words
  return words.split[0]
end

def titleize phrase
  words = phrase.split.map do |word|
    if word == "and" || word == "the" || word == "over"
      word
    else
      word.capitalize
    end
  end

  words.first.capitalize!
  phrase = words.join(" ")
end
