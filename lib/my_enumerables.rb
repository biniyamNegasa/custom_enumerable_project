# frozen_string_literal: true

# Enumerabel method
module Enumerable
  # Your code goes here
  def my_each_with_index
    length = self.length
    start = 0
    until start == length
      yield(self[start], start)
      start += 1
    end
    self
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    length = self.length
    start = 0
    until start == length
      yield self[start]
      start += 1
    end
    self
  end
end
