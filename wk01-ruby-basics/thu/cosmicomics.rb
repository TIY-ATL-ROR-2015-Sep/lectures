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

def build_dictionary(file)
  dict = Hash.new([])
  file.each_line do |line|
    word = line.chomp
    if word.length > 3
      dict[word.length] += [word]
    end
  end
  dict
end

def find_funny_words(filepath)
  File.open(filepath, "r") do |f|
    word_groups = build_dictionary(f)
    word_groups.each do |word_length, words|
      words.combination(2).each do |word1, word2|
       puts join_words(word1, word2) if funny_word?(word1, word2)
      end
    end
  end
end

find_funny_words("english-dict.txt")

