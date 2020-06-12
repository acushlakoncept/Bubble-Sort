def bubble_sort(arr)
  swap_test = true
  (0...arr.length).each do |_i|
    (0...arr.length - 1).each do |j|
      next unless arr[j] > arr[j + 1]

      temp = arr[j]
      arr[j] = arr[j + 1]
      arr[j + 1] = temp
      swap_test = false
    end
    break if swap_test
  end

  arr
end

print bubble_sort([200, 6, 8, 9, 1, 56, 23, 1, 8])
