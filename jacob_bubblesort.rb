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

def bubble_sort_by(arr)
  i = 0
  arr_length = arr.length - 1
  while i < arr_length
    if yield(arr[i], arr[i + 1]).negative?
      i += 1
    elsif yield(arr[i], arr[i + 1]).zero?
      i += 1
    elsif yield(arr[i], arr[i + 1]).positive?
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      i = 0
    end

  end
  print arr
end

print bubble_sort([1, 2, 5, 3, 6, 5, 6, 6, 7, 4, 3])

bubble_sort_by %w[i i hi hello hey] do |left,right|
  left.length - right.length
end
