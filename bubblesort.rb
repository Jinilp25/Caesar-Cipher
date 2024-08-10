
def swap!(first_idx, second_idx, array)
  temp = array[first_idx]
  temp2 = array[second_idx]
  array.delete_at(first_idx)
  array.insert(first_idx, temp2)

  array.delete_at(second_idx)
  array.insert(second_idx, temp)
end

def bubble_sort(array)
  highest = 0
  (array.length - 1).times do
    for n in (1..array.length-1)
      if array[n] < array[n-1]
        swap!(n-1, n, array)
      end
    end
  end
  array
end

p bubble_sort([4,3,78,2,0,2])

