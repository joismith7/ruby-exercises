module Enumerable
  def my_each
  	for element in self do
  	  yield(element)
    end
    self
  end

  def my_each_with_index
  	i = 0
  	for element in self do
  	  yield(element, i)
  	  i += 1
    end
    self
  end

  def my_select
  	array = []
  	self.my_each do |element|
  	  array.push(element) if yield(element)
  	end
  	array
  end

  def my_all?
    flag = true
    self.my_each do |element|
      flag = false unless yield(element)
    end
    flag
  end

  def my_any?
    flag = false
    self.my_each do |element|
      flag = true if yield(element)
    end
    flag
  end

  def my_none?
    flag = true
    self.my_each do |element|
      flag = false if yield(element)
    end
  end

  def my_count
    count = 0
    self.my_each do |element|
      if block_given?
        count += 1 if yield(element)
      else
        count += 1
      end
    end
    count
  end

  def my_map(proc=nil)
    mapped = []
    if proc != nil
      self.my_each do |element|
        mapped.push(proc.call(element))
      end
    else
      self.my_each do |element|
        mapped.push(yield(element))
      end
    end
    mapped
  end

  def my_inject
    total = 0
    self.my_each do |element|
      total
    end
  end
end 
