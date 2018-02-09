require('rspec')
require('pry')
require('anagrams')


describe('Anagram#compare')do
  it('evaluates if two words are anagrams')do
    words = Anagram.new('cat', 'tac')
    expect(words.compare()).to(eq('these words are anagrams'))
  end

  it ('takes into account mixed cases') do
    words = Anagram.new('cat', 'TaC')
    expect(words.compare()).to(eq('these words are anagrams'))
  end

  it ('evaluates if input is a word, i.e. contains vowels') do
    words = Anagram.new('cat', 'TC')
    expect(words.compare()).to(eq('one of these words isn\'t a word'))
  end

  it ('evaluates if words are antigrams, no letters in common') do
    words = Anagram.new('cat', 'dog')
    expect(words.compare()).to(eq('these words are antigrams'))
  end

end
