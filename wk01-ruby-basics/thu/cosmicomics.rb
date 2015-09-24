require 'pry'

def anagram?(word1, word2)
  word1.chars.sort == word2.chars.sort
end

def joiner?(word1, word2)
  word1[-1] == word2[0]
end

def funny_word?(word1, word2)
  anagram?(word1, word2) && joiner?(word1, word2)
end

def join_words(word1, word2)
  # Join all of word1 with all but the first letter of word2
  word1 + word2[1..-1]
end

def find_funny_words(filepath)
  File.open(filepath, "r") do |f|
    dict = f.readlines.map { |word| word.chomp }
    dict.combination(2).each do |word1, word2|
      if funny_word?(word1, word2)
        puts join_words(word1, word2)
      end
    end
 # TODO: Room for performance improvement!
 #       if word1.length >= 4 && word2.length >= 4 && word1.length == word2.length
 #       end
  end
end

find_funny_words("english-dict.txt")

