def merge_sort(array)
  len = array.length
  return array if len <= 1

  left = merge_sort(array[0...len/2])
  right = merge_sort(array[len/2..])
  merged = []
  merged << (left[0] < right[0] ? left.shift : right.shift) until right.empty? || left.empty?
  merged + left + right
end