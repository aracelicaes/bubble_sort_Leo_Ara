#!/usr/bin/env ruby
array = [4,3,78,2,0,2]
arraytwo = [4,3,78,2,0,2,2,5,7852,54,8]

def bubble_sort(array)
  go = array.length-1

  switchIt = true 

  while switchIt

  i = 0

  switchIt = false
    while i < go
        
      if array[i] > array[i+1]
          array[i], array[i+1] = array[i+1], array[i]
          switchIt = true
      end

      i += 1 #this is where we iterate & g2 next index
    end

  end

  return array
end




def bubble_sort_by(array)
  go = array.length-1

  switchIt = true 

  while switchIt

  i = 0

  switchIt = false
		while i < go
      if yield(array[i], array [i+1]) > 0
          array[i], array[i+1] = array[i+1], array[i]
          switchIt = true
      end

      i += 1
      
    end

  end

  array
  
end

puts bubble_sort_by(["This is a big one","hi","hello","hey","hi there", "I'm", "Your friend"]) { |left, right| left.length - right.length }



