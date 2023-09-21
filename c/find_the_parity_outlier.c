/*
You are given an array (which will have a length of at least 3, but could be very large) containing integers.
The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N.
Write a method that takes the array as an argument and returns this "outlier" N.

Examples
[2, 4, 0, 100, 4, 11, 2602, 36]
Should return: 11 (the only odd number)

[160, 3, 1719, 19, 11, 13, -21]
Should return: 160 (the only even number)
*/

#include <stdlib.h>

int find_outlier(const int *values, size_t count)
{
  for (int i = 1; i < count; i++)
  {
    if (abs(values[i - 1]) % 2 != abs(values[i]) % 2)
    {
      if (i == 1)
      {
        if (abs(values[i]) % 2 == abs(values[i + 1]) % 2)
          { return values[i - 1]; }
      }
      return values[i];
    }
  }
}
