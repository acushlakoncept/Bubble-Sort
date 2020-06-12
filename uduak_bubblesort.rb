def bubble_sort(arr)
  swap_test = true
  for i in (0...arr.length)
    for j in (0...arr.length - 1)
      if arr[j] > arr[j + 1]
        # swap
        temp = arr[j]
        arr[j] = arr[j + 1]
        arr[j + 1] = temp

        swap_test = false
      end
    end
    break if swap_test
  end
  arr
end

print bubble_sort([200, 6, 8, 9, 1, 56, 23, 1, 8])