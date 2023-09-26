:begin

The rgb function is incomplete. Complete it so that passing in RGB decimal values will result in a hexadecimal representation being returned. 
Valid decimal values for RGB are 0 - 255. Any values that fall out of that range must be rounded to the closest valid value.

Note: Your answer should always be 6 characters long, the shorthand with 3 will not work here.

Examples (input --> output):

255, 255, 255 --> "FFFFFF"
255, 255, 300 --> "FFFFFF"
0, 0, 0       --> "000000"
148, 0, 211   --> "9400D3"

:end


def rgb(r, g, b)
  nums = [r, g, b].map {|i| if i < 0 then 0 elsif i > 255 then 255 else i end}
  nums.map! {|i| if i.to_s(16).size == 1 then '0' + i.to_s(16) else i.to_s(16) end}
  nums.join.upcase
end


