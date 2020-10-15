def bubble_sort(arr)
    for i in (0..arr.length-1)
        for i in (1..arr.length-1)
            if arr[i-1] > arr[i]
                larger_num = arr[i-1]
                smaller_num = arr[i]
                arr[i-1] = smaller_num
                arr[i] = larger_num
            end
        end
    end
    arr
end

arr = [8, 3, 1, 6, 5, 9, 2]
print bubble_sort(arr)