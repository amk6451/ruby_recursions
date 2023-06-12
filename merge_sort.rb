def merge_sort(arr)
    return arr if arr.length <= 1
  
    mid = arr.length / 2
    left_half = merge_sort(arr[0...mid])
    right_half = merge_sort(arr[mid...arr.length])
  
    merge(left_half, right_half)
  end
  
  def merge(left, right)
    merged = []
    i = j = 0
  
    # Comparing elements from both halves and merging them in sorted order
    while i < left.length && j < right.length
      if left[i] <= right[j]
        merged << left[i]
        i += 1
      else
        merged << right[j]
        j += 1
      end
    end
  
    # Appends any remaining elements from the left or right halves
    merged.concat(left[i..-1])
    merged.concat(right[j..-1])
  
    merged
  end

arr = [10, 23, 1, 4, 7, 22, 20, 6, 9]
sorted_array = merge_sort(arr)
p sorted_array