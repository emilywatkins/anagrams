# Anagrams and Antigrams

#### Ruby exercise, 2.9.18

#### Emily Watkins

## Description

This simple program evaluates two words for likeness. Specifically designed to determine whether these two words are anagrams, it also determines what (if any) letters these two words have in common. If the two words have no words in common, they are antigrams.

## Setup

Clone this repository.

Install Ruby if necessary.

Open anagrams_spec.rb file to view tests.

From root directory, run the following to view successful tests:

`$ bundle install`  
`$ rspec`

## Specs

* Program evaluates if two words are anagrams.  
Input: "cat", "tac"  
Output: "these words are anagrams"

* Program is not case sensitive.  
Input: "Cat", "Tac"  
Output: "these words are anagrams"

* Program checks for non-words (words without   vowels).
Input: "cat", "tc"  
Output: "one of these words is not a word"

* If words are not anagrams, program will check if they are antigrams (no letters in common).  
Input: "cat", "dog"  
Output: "these words are antigrams"

* Program accounts for multi-word strings with characters.  
Input: "Nag a ram.", "anagram"  
Output: "these are anagrams"

* If words are not anagrams or antigrams, it will return the shared letters.  
Input: "batty", "cat"  
Output: "these words are not anagrams but 2 letters do match: a, t"

* Program checks if words contain 3 or more consecutive repeating numbers (not a word).  
Input: "boomshakalaka", "bangaraaaang"  
Output: "one of these words is not a word"

## Technologies Used

* Ruby


## License

Licensed under the MIT License.

Copyright (c) 2018 Emily Watkins
