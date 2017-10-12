require 'byebug'

def phase_i(string,string2)

  arr = string.chars.permutation.to_a
  arr.include?(string2.chars)



end


# puts phase_i("gizmo", "sally")
# puts phase_i("asfigkndfa", "asfgoasdfaduh")



def phase_ii(s1, s2)
  del_dex = []
  s1 = s1.chars
  s2 = s2.chars
  s1.each_with_index do |el, idx|
    if s2.include?(el)
      del_dex << idx
      s2.delete_at(s2.index(el))
    end
  end
  del_dex.each { |i| s1[i] = nil }
  return s1.select { |el| !el.nil? }.empty? && s2.empty?
end

# puts phase_ii("gizmo", "sally")
# puts phase_ii("asfigknaskfldjma", "asfgouhnsdljkfn")

def phase_iii(s1, s2)
  s1.chars.sort! == s2.chars.sort!

end
#
# puts phase_iii("gizmo", "sally")
# puts phase_iii("abc","cba")

def phase_iv(s1, s2)
  hash = Hash.new(0)
  s1.chars.each { |letter| hash[letter] += 1 }
  s2.chars.each { |letter| hash[letter] -= 1 }
  hash.all? { |_, v| v == 0 }

end


puts phase_iv("gizmo", "sally")
puts phase_iv("abc","cba")
