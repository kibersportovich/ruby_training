/*
In this little assignment you are given a string of space separated numbers, and have to return the highest and lowest number.

Examples
high_and_low("1 2 3 4 5")  // return "5 1"
high_and_low("1 2 -3 4 5") // return "5 -3"
high_and_low("1 9 3 4 -5") // return "9 -5"
high_and_low("1 2 3 4 5", result)  // result "5 1"
high_and_low("1 2 -3 4 5", result) // result "5 -3"
high_and_low("1 9 3 4 -5", result) // result "9 -5"

Notes
All numbers are valid Int32, no need to validate them.
There will always be at least one number in the input string.
Output string must be two numbers separated by a single space, and highest number is first.
*/


#include <stdio.h>

char *get_digit(int* str, int* pTemp)
{
  int temp = 0;
  int temp_sign = 1;
  char* p = str;
  for (p; *p != ' ' && *p != 0; ++p)
  {
    if (*p == '-') {
      temp_sign = -1;
      continue;
    }
    temp = temp * 10 + (*p - 48); // 48..57 в таблице ASCII это цифры с 0..9
  }
  *pTemp = temp * temp_sign;
  return p;
}

void high_and_low(const char *strnum, char *result)
{
  int min, max, temp = 0;
  char *p = strnum;
  p = get_digit(p, &temp);
  min = temp;
  max = temp;
  while (*p != 0)
  {
    p = get_digit(p + 1, &temp);
    if (temp < min){
      min = temp;
    } else if(temp > max) {
      max = temp;
    }
  }
  sprintf(result, "%d %d", max, min);
}

