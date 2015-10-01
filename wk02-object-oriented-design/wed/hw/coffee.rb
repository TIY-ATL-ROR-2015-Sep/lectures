class Coffee
  def initialize(name)
    @name = name
    @full = true
  end

  def name
    @name
  end

  def full?
    @full
  end

  def slurp!
    @full = false
  end

  def empty?
  end
end
