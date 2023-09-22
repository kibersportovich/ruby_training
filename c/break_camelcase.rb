/*
Complete the solution so that the function will break up camel casing, using a space between words.

Example

"camelCasing"  =>  "camel Casing"
"identifier"   =>  "identifier"
""             =>  ""

*/

#include <stddef.h>

//returned buffer should be dynamically allocated and will be freed by a caller

char* solution(const char *camelCase) {
  int chars = 0;
  int upper = 0;
  for (char *p = camelCase; *p != 0; ++p) {
    if (*p <= 90) 
    {
      upper += 1;
    }
    chars += 1;
  }
  char *str = (char*)malloc(chars + upper);
  int i = 0;
  for (char *p = camelCase; *p != 0; ++p) {
    if (*p <= 90) 
    {
      str[i] = ' ';
      i += 1;
    }
    str[i] = *p;
    i += 1;
  }
  str[i] = 0;
  return str;
}

