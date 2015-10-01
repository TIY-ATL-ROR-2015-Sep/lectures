class Dictionary
  def initialize
    @word_list = [
      "cookies", "monsters", "unicorns", "robots",
      "skynet", "disaster", "back", "to", "the", "future",
      "jurassic", "velociraptors", "tone", "chicken", "lunch",
      "gyros", "sleep", "coffee"
    ]
    @last_choice = nil
  end

  def random_word
    word = @word_list.sample
    until word != @last_choice
      word = @word_list.sample
    end
    @last_choice = word
  end
end
