# Your Code Here
def map(array) 
  new_array = []
  i = 0 
  while i < array.size 
    new_array << (yield(array[i]))
    i += 1 
  end 
  new_array
end

def reduce(array, starter=nil) 
  if starter 
    new_value = starter 
  else 
    new_value = array[0] 
  end

  i = 0 
  while i < array.size 
    new_value += (yield(array[i])) 
    i += 1 
  end 
  new_value 
  end 
end

