class Book
  attr_accessor :title

  def title=(title)
    words = title.split

    capitalized_title = ""
    words.map do |word|
      if not bad_words? word
        word.capitalize!
      end
      capitalized_title = capitalized_title + word + " "
    end

    @title = capitalized_title[0].capitalize + capitalized_title[1..-2]
  end

  def bad_words? input
    dont_capitalize = ["and", "in", "the", "of", "a", "an"]
    dont_capitalize.include? input
  end
end
