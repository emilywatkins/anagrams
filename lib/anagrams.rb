class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def compare
    sort1 = @word1.downcase.chars.sort.join
    sort2 = @word2.downcase.chars.sort.join

    count_vowels = sort2.chars.count {|l| l =~ /[aeiou]/}

    if count_vowels == 0
      return 'this isn\'t a word'
    end


    if sort1 == sort2
      'these words are anagrams'
    else
      'these words aren\'t anagrams'
    end

  end
end
