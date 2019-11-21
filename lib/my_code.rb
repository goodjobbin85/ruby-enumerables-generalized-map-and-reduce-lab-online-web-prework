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
    i = 0 
    while i < array.size 
      (yield(array[i])) 
      i += 1 
    end 
    starter 
  end
end

