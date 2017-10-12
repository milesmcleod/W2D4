list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

def my_min(list)
  list.each do |el|
    return el if list.all? { |other| el <= other }
  end
end

puts my_min(list)


def other_min(list)

  min = list.first

  list.each do |el|
    min = el if el <= min
  end

  min

end
puts other_min(list)

def contiguous_summer(list)
  subsets = []
  i = 0
  while i < list.length
    i2 = i
    while i2 < list.length
      subsets << list[i..i2]
      i2 += 1
    end
    i += 1
  end
  subsets.map { |el| el.reduce(:+) }.max
end

list = [2, 3, -6, 7, -6, 7]
list = [5, 3, -7]
list = [-5, -1, -3]

puts contiguous_summer(list)

def better_sum(list)
  sum = list.first
  maximum = sum
  i = 1
  while i < list.length
    sum += list[i]
    sum = list[i] if list[i] > sum
    maximum = sum if sum > maximum
    i +=  1
  end
  maximum
end

puts better_sum(list)
