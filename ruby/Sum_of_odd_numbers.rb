:begin 
Given the triangle of consecutive odd numbers:

             1
          3     5
       7     9    11
   13    15    17    19
21    23    25    27    29
...

Calculate the sum of the numbers in the nth row of this triangle (starting at index 1) e.g.: (Input --> Output)

1 -->  1
2 --> 3 + 5 = 8
:end

def row_sum_odd_numbers(n)
  len = (1..n).sum 
  nums = []
  i = 0
  while nums.length != len
    if i % 2 > 0
      nums << i
    end
    i = i + 1
  end
  ((len-n..len-1).map {|i| nums[i]}).sum
end
