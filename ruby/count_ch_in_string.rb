:begin
The main idea is to count all the occurring characters in a string. 
If you have a string like aba, then the result should be {'a': 2, 'b': 1}.

What if the string is empty? Then the result should be empty object literal, {}.
:end

def count_chars(s)
  return {} if s == ""
  hash = Hash.new 
  s.chars.uniq.each {|i| hash[i] = 0}
  s.chars.each {|i| hash[i] += 1}
  hash
end
