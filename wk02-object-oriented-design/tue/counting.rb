class CountingPlayer
  def initialize
    @count = 0
  end

  def get_guess(last_result)
    @count += 1
  end
end
