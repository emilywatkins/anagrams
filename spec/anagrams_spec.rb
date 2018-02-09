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

  it ('if not anagrams or antigrams, returns letters that do match') do
    word = Anagram.new('cat')
    expect(word.compare('batty')).to(eq('these words are not anagrams but 2 letters do match: a, t'))
  end

end
