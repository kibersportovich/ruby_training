/*
Jaden Smith, the son of Will Smith, is the star of films such as The Karate Kid (2010) and After Earth (2013). 
Jaden is also known for some of his philosophy that he delivers via Twitter. When writing on Twitter, he is known for almost always capitalizing every word. 
For simplicity, you'll have to capitalize each word, check out how contractions are expected to be in the example below.

Your task is to convert strings to how they would be written by Jaden Smith. The strings are actual quotes from Jaden Smith, but they are not capitalized in the same way he originally typed them.

Example:

Not Jaden-Cased: "How can mirrors be real if our eyes aren't real"
Jaden-Cased:     "How Can Mirrors Be Real If Our Eyes Aren't Real"
*/


char *to_jaden_case (char *jaden_case, const char *string)
{
// write to jaden_case and return it
	*jaden_case = '\0';
  int i = 0;
  if (*string >= 97) {
    jaden_case[i] = *string - 32; //если первая буква маленькая, то делаем её заглавной
    ++i;
  }
  for (char* p = string + i; *p != 0; ++p) 
  {
    if (jaden_case[i - 1] == ' ' && *p >= 97) {
      // 97 первая буква с нижним регистром в таблице ASCII (a)
      jaden_case[i] = *p - 32; // отнимаем 32 чтобы получить туже буквы только в верхнем регистре в таблице ASCII
      ++i;
      continue;
    }
    jaden_case[i] = *p;
    ++i;
  }
  jaden_case[i] = '\0';
	 return jaden_case;
}
