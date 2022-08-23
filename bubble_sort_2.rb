my_array = [3, 5, 19, 2, 80, 7, 8, 23]
def bubble_sort(array)
  is_sorted = false
  sorted_array = []
  keepGoing = true
  while(keepGoing && !is_sorted)
    swaped = false
    array.each_with_index.reduce() do |memo, (value, index)|
      if value < memo[0]
        array[index - 1] = value
        array[index] = memo[0]
        swaped = true
      end
      [array[index], 0]
    end
    sorted_array.unshift(array.pop())
    array.length < 1 ? keepGoing = false : keepGoing
    !swaped ? sorted_array.unshift(array) && keepGoing = false : keepGoing
  end
  sorted_array.flatten
end

p bubble_sort(my_array)
