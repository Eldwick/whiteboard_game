############### Write all the outputs to the console ###############

class Foo
  def self.scheme(num)
    num *= 3           <span class="wrong">#Step 3: 6 becomes 18</span>
  end

  def scheme(num)
    num += 2           <span class="wrong">#Step 4: 18 becomes 20</span>
  end
end

class Bar < Foo
  def scheme(num)
    num += 1           <span class="wrong">#Step 2: 5 becomes 6</span>
    Bar.scheme(num)
  end
end

def scheme(num)
  num += 3             <span class="wrong">#Step 1: 2 becomes 5</span>
  next_num = Bar.new.scheme(num)
  Foo.new.scheme(next_num)
end

puts scheme(2)

<span class="wrong">Output:</span>
    <span class="wrong">20</span>
