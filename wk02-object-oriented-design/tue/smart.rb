class SmartPlayer
  def initialize
    @guess = 50
    @min = 1
    @max = 100
  end

  # :low, :high
  def get_guess(last_result)
    if last_result == :low
      @min = @guess
      @guess = (@min + @max) / 2
    elsif last_result == :high
      @max = @guess
      @guess = (@min + @max) / 2
    else
      @guess
    end
  end
end
