############### Write all the outputs to the console ###############

def fizzbuzz(x)
  str = "fizz"
  str += "buzz" if x % 2 == 0
  puts str
end

(1..10).each { |num| ((num % 3) == 1) ?  fizzbuzz(num) : nil}

