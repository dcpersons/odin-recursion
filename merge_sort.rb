# frozen_string_literal: true

def merge_sort(arr)
  return arr if arr.length == 1

  first = merge_sort(arr.slice!(0..arr.length / 2 - 1))
  second = merge_sort(arr)
  arr = []
  arr.push(first[0] < second[0] ? first.shift : second.shift) until first.empty? || second.empty?
  arr + first + second
end

p merge_sort([7, 4, 6, 8, 2, 3, 63, 1, 23, 3435, 9123, 9])
