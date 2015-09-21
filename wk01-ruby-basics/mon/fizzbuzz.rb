def fizzbuzz(max)
  1.upto(max) do |n|
    if n % 15 == 0
      puts "fizzbuzz"
    elsif n % 3 == 0
      puts "fizz"
    elsif n % 5 == 0
      puts "buzz"
    else
      puts n
    end
  end
end

def fancy_fizzbuzz(max)
  1.upto(max) do |n|
    result = ""
    result += "fizz" if n % 3 == 0
    result += "buzz" if n % 5 == 0
    puts (result.empty? ? n : result)
  end
end

fancy_fizzbuzz(20)
