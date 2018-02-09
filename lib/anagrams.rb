class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def compare
    sort1 = @word1.downcase.chars.sort.join
    sort2 = @word2.downcase.chars.sort.join

    array1 = sort1.split("")
    array2 = sort2.split("")

    array3 = []

    count_vowels = sort2.chars.count {|l| l =~ /[aeiou]/}

    array1.each do |a|
      if array2.include? a
        array3.push a
      end
      array3
    end

    if array3.length > 0
      return 'these words have characters in common'
    else
      return 'these words are antigrams'
    end

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
