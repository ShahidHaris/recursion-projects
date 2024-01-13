def merge_sort(list)
  return list if list.size <= 1

  mid = (list.size / 2.0).round
  r, l = list.each_slice(mid).to_a

  right = merge_sort(r)
  left = merge_sort(l)

  merge(right, left)
end

def merge(right, left)
  result = []
  i = j = 0

  while i < right.size && j < left.size
    if right[i] <= left[j]
      result << right[i]
      i += 1
    else
      result << left[j]
      j += 1
    end
  end

  result += right[i..]
  result += left[j..]

  result
end

list = [105, 79, 100, 110, 80]
sorted_array = merge_sort(list)
puts "The sorted array of #{list} is: #{sorted_array}"

=begin
  def merge_sort(list)
    return list if list.size <= 1

    mid = (list.size / 2.0).round
    r, l = list.each_slice(mid).to_a

    right = merge_sort(r)
    left = merge_sort(l)

    merge(right, left)
  end

  def merge(right, left)
    result = []
    i = j = 0

    while i < right.size && j < left.size
      if right[i] <= left[j]
        result << right[i]
        i += 1
      else
        result << left[j]
        j += 1
      end
    end

    result += left[i..-1]
    result += right[j..-1]

    result
  end

  list = [3, 2, 1, 13, 8, 5, 0, 1]
  sorted_array = merge_sort(list)
  puts "The sorted array of #{list}is: #{sorted_array}"
=end
