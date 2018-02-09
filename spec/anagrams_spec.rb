require('rspec')
require('pry')
require('anagrams')


describe('Anagram#compare')do
  it('evaluates if two words are anagrams')do
    word = Anagram.new('cat')
    expect(word.compare('tac')).to(eq('these words are anagrams'))
  end

  it ('takes into account mixed cases') do
    word = Anagram.new('cat')
    expect(word.compare('TaC')).to(eq('these words are anagrams'))
  end

  it ('evaluates if input is a word, i.e. contains vowels') do
    word = Anagram.new('cat')
    expect(word.compare('TC')).to(eq('one of these words isn\'t a word'))
  end

  it ('evaluates if words are antigrams, no letters in common') do
    word = Anagram.new('cat')
    expect(word.compare('dog')).to(eq('these words are antigrams'))
  end

  it ('evaluates multiple-word strings with characters') do
    word = Anagram.new('Nag a ram.')
    expect(word.compare('anagram')).to(eq('these words are anagrams'))
  end

  it ('returns letters that do match if not anagrams or antigrams') do
    word = Anagram.new('cat')
    expect(word.compare('batty')).to(eq('these words are not anagrams but 2 letters do match: a, t'))
  end

  it ('checks if words contain 3 of the same letter in a row (not a word)') do
    word = Anagram.new('boomshakalaka')
    expect(word.compare('bangaraaaang')).to(eq('one of these words is not a word'))
  end

end
