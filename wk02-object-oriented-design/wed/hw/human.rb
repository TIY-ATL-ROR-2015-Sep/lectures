class Human
  def initialize(name)
    @name = name
  end

  def alertness
    0.0
  end
end


# Foo.new(bar, baz)
## Ruby does this:

### looks up the class Foo
### allocates memory for an empty Foo, calls it x
### x.initialize(bar, baz)  ... or whatever arguments new got
### hands x back to us
