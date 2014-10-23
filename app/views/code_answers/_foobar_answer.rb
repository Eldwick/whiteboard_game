############### Write all the outputs to the console ###############
def foo(x)
  if x % 2 == 0
    x += 1
    <span class="wrong">puts x   # Third puts > 9</span>
    x
  else
    x += 2          
    <span class="wrong">puts x   # First puts > 5</span>
    x
  end
end

def bar(x)
  if x % 2 == 0
    x += 2
    <span class="wrong">puts x    # Second puts > 8</span>
    x
  else
    x += 1
    puts x
    x
  end
end

foo = foo(3)
bar = bar(6)
foo(bar)

<span class="wrong">Output:</span>
    <span class="wrong">5</span>
    <span class="wrong">7</span>
    <span class="wrong">9</span>