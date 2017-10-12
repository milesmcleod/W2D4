#brute force

def bad_two_sum(arr,target)

  arr.each_with_index do |el,idx|

    (idx+1...arr.length).each do |idx2|
      if el + arr[idx2] == target
        return true
      end

    end

  end
    false

end
#puts bad_two_sum([1,2,3,4,5],9)

def sort_two_sum(arr,target)
  arr.sort!
  left_idx = 0
  right_idx = arr.length - 1
  until left_idx == right_idx
    if arr[left_idx] + arr[right_idx] == target
      return true
    elsif arr[left_idx] + arr[right_idx] > target
      right_idx -= 1
    elsif arr[left_idx] + arr[right_idx] < target
      left_idx += 1
    end
  end
  false
end

#puts sort_two_sum([1,2,3,4,5],9)


def hash_two_sum(arr, target)
  hash = Hash.new
  arr.each_with_index do |el, idx|
    return true if hash[target-el]
    hash[el] = idx
  end
  false
end

puts hash_two_sum([1,2,3,4,5],9)
