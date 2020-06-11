def bubble_sort(arr)
    i = 0
    j = 1
    while i < arr.length do
        if arr[i] < arr[j]
        i += 1
        j += 1
        elsif arr[i] > arr[j]
        i = 0
        j = 1

    end
end 

bubble_sort([1,3,5,6,3,4,34,6])