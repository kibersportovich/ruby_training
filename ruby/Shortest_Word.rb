# Simple, given a string of words, return the length of the shortest word(s).
# String will never be empty and you do not need to account for different data types.

def find_short(s)
    strs = s.split
    min = strs[0].length
    strs.each {|str| min = str.length if str.length < min }
    return min # l: length of the shortest word
end
