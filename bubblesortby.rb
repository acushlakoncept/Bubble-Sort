def bubble_sort_by(arr)
  i = 0
  arr_length = arr.length - 1
  while i < arr_length
    if arr[i].length <= arr[i + 1].length
      i += 1
    elsif arr[i].length > arr[i + 1].length
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      i = 0
    end
  end
  arr
end

print bubble_sort_by(%w[hi hello hey h])
