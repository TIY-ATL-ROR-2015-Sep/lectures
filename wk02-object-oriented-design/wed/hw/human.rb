class Human
  def initialize(name)
    @name = name
    @alertness = 0.0
    @coffee = nil
  end

  def alertness
    @alertness
  end

  def has_coffee?
  end

  def buy(coffee)
    @coffee = coffee
  end

  def drink!
    @coffee.slurp!
    puts "#{@coffee.name} is deliiiicious!"
    @alertness = @alertness + 0.33
  end

  def needs_coffee?
    true
  end
end


# Foo.new(bar, baz)
## Ruby does this:

### looks up the class Foo
### allocates memory for an empty Foo, calls it x
### x.initialize(bar, baz)  ... or whatever arguments new got
### hands x back to us
