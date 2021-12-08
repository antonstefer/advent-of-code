int countIncreasingNumbers(List<int> input) {
  int count = 0;
  for (int i = 0; i < input.length - 1; i++) {
    if (input[i] < input[i + 1]) {
      count++;
    }
  }
  return count;
}
