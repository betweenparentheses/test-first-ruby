module Silly_Blocks

def reverser
  string = yield
  string.reverse
end

def adder(n = 1)
  yield + n
end

def repeater(number_of_times)
  number_of_times.times {yield}
end

end
