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

  def my_select
    filtered = []
    my_each do |elm|
      filtered << elm if yield(elm)
    end
    filtered
  end

  def my_all?
    my_each do |elm|
      return false unless yield(elm)
    end
    true
  end

  def my_any?
    my_each do |elm|
      return true if yield(elm)
    end
    false
  end

  def my_none?
    my_each do |elm|
      return false if yield(elm)
    end
    true
  end

  def my_count
    return length unless block_given?

    count = 0
    my_each do |elm|
      count += 1 if yield(elm)
    end
    count
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
