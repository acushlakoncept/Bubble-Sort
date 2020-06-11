def bubble_sort(arr)
  swapTest = true
  
  for i in (0...arr.length)
    for j in (0...arr.length-1)
     # swap
     if arr[j] > arr[j+1]
         temp = arr[j]
         arr[j] = arr[j+1]
         arr[j+1] = temp

         swapTest = false
     end
    end
    break if swapTest
 end
 return arr
    
end

puts bubble_sort(arr)