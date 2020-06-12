def bubble_sort(arr)
  swapTest = true
  
  for i in (0...arr.length)
    for j in (0...arr.length-1)
     
     if arr[j] > arr[j+1]       
         # swap
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

print bubble_sort([200, 6, 8, 9, 1, 56, 23, 1, 8])
puts ' '