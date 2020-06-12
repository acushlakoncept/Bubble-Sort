def bubble_sort(arr)
  i = 0
  arr_length = arr.length - 1
  while i < arr_length
    if arr[i] <= arr[i + 1]
      i += 1
    elsif arr[i] > arr[i + 1]
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      i = 0
    end
  end
  arr
end

print bubble_sort([1, 2, 5, 3, 6, 7, 4, 3])
