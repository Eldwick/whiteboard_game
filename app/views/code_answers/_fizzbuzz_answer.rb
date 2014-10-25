############### Write all the outputs to the console ###############

def fizzbuzz(num)
  str = "fizz"
  str += "buzz" if num % 2 == 0 
  puts str
end

(1..10).each { |num| ((num % 3) == 1) ?  fizzbuzz(num) : nil} 
<span class="wrong">fizzbuzz called on 1, 4, 7, 10</span>

<span class="wrong">Output:</span>
    <span class="wrong">fizz</span>
    <span class="wrong">fizzbuzz</span>
    <span class="wrong">fizz</span>
    <span class="wrong">fizzbuzz</span>