class SmartPlayer
  def initialize
    @min = prompt_for_min
    @max = MAX
  end

  # Acceptable values are :low, :high, and nil
  def get_guess(last_result)
    if last_result == :low
      @min = @guess
      @guess = (@min + @max) / 2
    elsif last_result == :high
      @max = @guess
      @guess = (@min + @max) / 2
    else
      @guess = 50
    end
  end

  private
  def prompt_for_min
    puts "Hey pal, what's your min? (you should probably pick 1)"
    gets.chomp.to_i
  end
end
