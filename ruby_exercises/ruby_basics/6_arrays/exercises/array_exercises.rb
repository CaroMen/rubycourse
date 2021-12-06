def nil_array(number)
  # return an array containing `nil` the given number of times
  res = []

  number.times do
    res << nil
  end

  return res
end

def first_element(array)
  # return the first element of the array
  return array[0]
end

def third_element(array)
  # return the third element of the array
  return array[2]
end

def last_three_elements(array)
  # return the last 3 elements of the array
  # [1, 2, 3, 4, 5]
  unless array.length < 3
    return array[-3..-1]
  end

  return array
end

def add_element(array)
  # add an element (of any value) to the array
  array << "new element"
end

def remove_last_element(array)
  # Step 1: remove the last element from the array
  array.pop

  # Step 2: return the array (because Step 1 returns the value of the element removed)
  return array
end

def remove_first_three_elements(array)
  # Step 1: remove the first three elements
  array.shift(3)
  # Step 2: return the array (because Step 1 returns the values of the elements removed)
  return array
end

def array_concatenation(original, additional)
  # return an array adding the original and additional array together
  arr = original.concat(additional)
  return arr
end

def array_difference(original, comparison)
  # return an array of elements from the original array that are not in the comparison array
  res = []

  original.each do |element|
    unless comparison.include?(element)
      res << element
    end
  end

  return res
end

def empty_array?(array)
  # return true if the array is empty
  return array.length == 0
end

def reverse(array)
  # return the reverse of the array
  return array.reverse
end

def array_length(array)
  # return the length of the array
  return array.length
end

def include?(array, value)
  # return true if the array includes the value
  return array.include?(value)
end

def join(array, separator)
  # return the result of joining the array with the separator
  return array.join(separator)
end
