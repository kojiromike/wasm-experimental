int countOccurrences(char *str, int len, char target) {
  int i, count = 0;
  for (i = 0; i < len; i++)
    if (str[i] == target)
      count++;

  return count;
}
