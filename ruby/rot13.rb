:begin 

DESCRIPTION:

ROT13 is a simple letter substitution cipher that replaces a letter with the letter 13 letters after it in the alphabet. 
ROT13 is an example of the Caesar cipher.

Create a function that takes a string and returns the string ciphered with Rot13. 
If there are numbers or special characters included in the string, they should be returned as they are. 
Only letters from the latin/english alphabet should be shifted, like in the original Rot13 "implementation".


:end


def rot13(string) 
  arr = (65..90).to_a + (97..122).to_a
  string.chars.each_index do |i|
    char = string[i].ord
    next if !arr.include? char
    if char + 13 > char + (26 - (string[i].to_i(36) - 9)) 
      char = char + 13 - 26
    else
      char += 13
    end
    string.setbyte(i, char)
  end
  string
end


