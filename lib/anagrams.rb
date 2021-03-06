class Anagram
  def initialize(word1)
    @word1 = word1
  end

  def compare(word2)
    sort1 = @word1.downcase.chars.sort.join
    sort2 = word2.downcase.chars.sort.join

    letters_only1 = sort1.gsub(/[^a-z]/, '')
    letters_only2 = sort2.gsub(/[^a-z]/, '')

    array1 = letters_only1.split("")
    array2 = letters_only2.split("")
    array3 = []

    count_vowels1 = letters_only1.chars.count {|c| c =~ /[aeiou]/}
    count_vowels2 = letters_only2.chars.count {|c| c =~ /[aeiou]/}

    consecutive_check1 = @word1.chars.chunk{|c| c}.map{|c, a| a.size}
    consecutive_check2 = word2.chars.chunk{|c| c}.map{|c, a| a.size}

    consecutive_check1.each do |a|
      if a > 2
        return 'one of these words is not a word'
      end
    end

    consecutive_check2.each do |a|
      if a > 2
        return 'one of these words is not a word'
      end
    end

    if count_vowels1 == 0 || count_vowels2 == 0
      return 'one of these words isn\'t a word'
    end

    if letters_only1 == letters_only2
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
      else
        return "these words are not anagrams but #{array3.length} letters do match: #{array3.join ', '}"
      end

    end


  end
end
