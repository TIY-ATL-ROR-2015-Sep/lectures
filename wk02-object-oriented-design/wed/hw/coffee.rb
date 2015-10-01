class Coffee
  def initialize(name)
    @name = name
    @sips = 3
  end

  def name
    @name
  end

  def full?
    @sips == 3
  end

  def empty?
    @sips.zero?
  end

  def slurp!
    @sips -= 1
  end
end
