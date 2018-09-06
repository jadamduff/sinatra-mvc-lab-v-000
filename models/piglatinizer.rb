class PigLatinizer

  def piglatinize(word)
    consonants = [ 'b', 'B', 'c', 'C', 'd', 'D', 'f', 'F', 'g', 'G', 'h', 'H', 'j', 'J', 'k', 'K', 'l', 'L', 'm', 'M', 'n', 'N', 'p', 'P', 'q', 'Q', 'r', 'R', 's', 'S', 't', 'T', 'v', 'V', 'x', 'X', 'z', 'Z', 'w', 'W', 'y', 'Y']
    vowels = ['a', 'A', 'e', 'E', 'i', 'I', 'o', 'O', 'u', 'U']
    if consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
      new_word = word.slice(3, word.length)
      new_word << word.slice(0, 3)
      return new_word << "ay"
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      new_word = word.slice(2, word.length)
      new_word << word.slice(0, 2)
      return new_word << "ay"
    elsif consonants.include?(word[0])
      new_word = word.slice(1, word.length)
      new_word << word.slice(0, 1)
      return new_word << "ay"
    elsif vowels.include?(word[0])
      return word << "way"
    end
  end


end
