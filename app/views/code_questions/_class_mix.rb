############### Write the output to the console ###############

class Foo
  def self.scheme(num)
    num *= 3
  end

  def scheme(num)
    num += 2
  end
end

class Bar < Foo
  def scheme(num)
    num += 1
    Bar.scheme(num)
  end
end

def scheme(num)
  num += 3
  next_num = Bar.new.scheme(num)
  Foo.new.scheme(next_num)
end

puts scheme(2)
