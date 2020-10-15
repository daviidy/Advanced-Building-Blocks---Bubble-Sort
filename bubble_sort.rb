def bubble_sort(arr)
    #we get the length of the array
    arr_length = arr.length

    loop do

      #we create a variable taht will be checked if elements are swapped
      is_swapped = false

      (arr_length - 1).times do |i|
        puts "iteration is #{i}"
        if arr[i] > arr[i + 1]
          arr[i] = arr[i + 1]
          arr[i + 1] = arr[i]
          is_swapped = true
        end
      end
      break if not is_swapped
    end
    # for i in (0..arr.length-1)
    #     for i in (1..arr.length-1)
    #         if arr[i-1] > arr[i]
    #             larger_num = arr[i-1]
    #             smaller_num = arr[i]
    #             arr[i-1] = smaller_num
    #             arr[i] = larger_num
    #         end
    #     end
    # end
    arr
end

arr = [8, 3, 1, 6, 5, 9, 2]

print bubble_sort(arr)
