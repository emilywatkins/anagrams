class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def compare
    sort1 = @word1.chars.sort.join
    sort2 = @word2.chars.sort.join

    if sort1 == sort2
      "these words are anagrams"
    end

  end
end
