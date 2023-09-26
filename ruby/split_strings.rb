:begin

Complete the solution so that it splits the string into pairs of two characters. 
If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').

Examples:

* 'abc' =>  ['ab', 'c_']
* 'abcdef' => ['ab', 'cd', 'ef']

:end


def solution(str)
  return [] if str == ''
  return str.scan(/\w{2}/) if str.size.even?
  str.scan(/\w{2}/) << "#{str[-1]}_"
end






