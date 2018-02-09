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
    expect(words.compare()).to(eq('this isn\'t a word'))
  end

end
