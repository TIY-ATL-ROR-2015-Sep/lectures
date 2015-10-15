require "pry"

## Lambda, Anonymous Functions

def my_map(array)
  result = []
  binding.pry
  array.each do |x|
    transformed = yield(x)
    result.push(transformed)
  end
  result
end

answer = my_map([1,2,3,4]) { |x| x + 1 }

binding.pry

words = ["cookies", "whiskey", "lunch", "games"]
words.map { |x| x.reverse }

## What's the difference between blocks, procs, and lambdas?

### Go. fuck. yourself.
### A: Well, if you're ever writing code that depends on the intricate differences,
### that is some brittle, easy to break, too clever, badly written code.
