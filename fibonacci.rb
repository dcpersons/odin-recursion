# frozen_string_literal: true

def fibs(num, arr = [0, 1])
  2.upto(num - 1) do |i|
    arr.push(arr[i - 1] + arr[i - 2])
  end
  arr
end

def fibs_rec(num)
  return [0, 1] if num <= 2

  seq = fibs_rec(num - 1)
  seq << seq[-1] + seq[-2]
  seq
end
