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
  
  def bubble_sort_by(arr)
    swap_test = true
    (0...arr.length).each do |_i|
      (0...arr.length - 1).each do |j|
        next unless (yield arr[j], arr[j + 1]).positive?
  
        temp = arr[j]
        arr[j] = arr[j + 1]
        arr[j + 1] = temp
        swap_test = false
      end
      break if swap_test
    end
    arr
  end
  
  bsort_by = bubble_sort_by(%w[hello hey hi here]) do |left, right|
    left.length - right.length
  end
  
  def bubble_sort2(arr)
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

#   p bsort_by

starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
p bubble_sort([2345, 2000, 234, 200, 6, 28, 9, 24, 67, 789, 21, 111, 1, 56, 23, 1, 8])
ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
elapsed = ending - starting
puts elapsed


