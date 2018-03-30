def bubble_sort(array)
  return array if array.length < 2	
  changed = true
  while changed do
  	changed = false
  	for index in 0..array.length-2
  	  if array[index] > array[index+1]
  	  	array[index], array[index+1] = array[index+1], array[index]
  	  	changed = true
  	  end
  	end
  end
  array
end

list = [4,3,78,2,0,2]
p bubble_sort(list)