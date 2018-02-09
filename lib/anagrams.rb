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

    count_vowels1 = sort1.chars.count {|l| l =~ /[aeiou]/}
    count_vowels2 = sort2.chars.count {|l| l =~ /[aeiou]/}

    if count_vowels1 == 0 || count_vowels2 == 0
      return 'one of these words isn\'t a word'
    end

    if sort1 == sort2
      return 'these words are anagrams'
    else
      array1.each do |a|
        if array2.include? a
          array3.push a
        end
        array3
      end

      if array3.length < 1
        return 'these words are antigrams'
      end

    end


  end
end
