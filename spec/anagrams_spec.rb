require('rspec')
require('pry')
require('anagrams')


describe('Anagram#compare')do
  it('evaluates if two words are anagrams')do
    words = Anagram.new('cat', 'tac')
    expect(words.compare()).to(eq('these words are anagrams'))
  end
end