my_array = [3, 5, 19, 2, 80, 7, 8, 23, 1]
def bubble_sort(array)
  sorted_array = []
  keepGoing = true
  while(keepGoing)
    swaps = 0
    array.each_with_index.reduce() do |memo, (value, index)|
      if value < memo[0]
        array[index - 1] = value
        array[index] = memo[0]
        swaps += 1
      end
      [array[index], 0]
    end
    sorted_array.unshift(array.pop())
    array.length < 2 ? sorted_array.unshift(array) && keepGoing = false : keepGoing
    swaps == 0 ? sorted_array.unshift(array) && keepGoing = false : keepGoing
  end
  sorted_array.flatten
end

p bubble_sort(my_array)
