def bubble_sort(arr)
  # we get the length of the array
  arr_length = arr.length
  loop do
    # we create a variable taht will be checked if elements are swapped
    is_swapped = false
    (arr_length - 1).times do |i|
      next unless arr[i] > arr[i + 1]
      arr[i] = arr[i + 1]
      arr[i + 1] = arr[i]
      is_swapped = true
    end
    break if !is_swapped
  end
  arr
end

arr = [8, 3, 1, 6, 5, 9, 2]

print bubble_sort(arr)

def bubble_sort_by(arr)
  sorted = false
  until sorted
    sorted = true
    0.upto(arr.length - 2) do |i|
      sorted_blk = yield(arr[i], arr[i + 1])
      if sorted_blk.positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = false
      end
    end
  end
  p arr
end

bubble_sort_by(%w[hi hello hey]) do |left,right|
  left.length - right.length
end
