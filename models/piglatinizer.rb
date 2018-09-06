class PigLatinizer

  def initialize(words)
    @words = words
  end

  def piglatinize(word)
    consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'x', 'z', 'w', 'y']
    vowels = ['a', 'e', 'i', 'o', 'u']

    case char_arr
    when vowels.include?(word[0])
      return word << "way"
    when consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
      new_word = word.slice(3, word.length)
      new_word << word.slice(0, 2)
      return new_word << "ay"
    when consonants.include?(word[0]) && consonants.include?(word[1])
      new_word = word.slice(2, word.length)
      new_word << word.slice(0, 1)
      return new_word << "ay"
    when consonants.include?(word[0])
      new_word = word.slice(1, word.length)
      new_word << word.slice(0)
      return new_word << "ay"
    end
  end

end
