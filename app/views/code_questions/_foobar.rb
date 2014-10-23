############### Write all the outputs to the console ###############
def foo(x)
  if x % 2 == 0
    x += 1
    puts x
    x
  else
    x += 2
    puts x
    x
  end
end

def bar(x)
  if x % 2 == 0
    x += 1
    puts x
    x
  else
    x += 2
    puts x
    x
  end
end

foo = foo(3)
bar = bar(6)

foo(bar)