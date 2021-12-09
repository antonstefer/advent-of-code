int countIncreasingNumbers(List<int> input) {
  int count = 0;
  for (int i = 0; i < input.length - 1; i++) {
    if (input[i] < input[i + 1]) {
      count++;
    }
  }
  return count;
}

int countIncreasingThreeSums(List<int> input) {
  int count = 0;
  for (int i = 0; i < input.length - 3; i++) {
    int firstThreeSum = input[i] + input[i + 1] + input[i + 2];
    int secondThreeSum = input[i + 1] + input[i + 2] + input[i + 3];
    if (firstThreeSum < secondThreeSum) {
      count++;
    }
  }
  return count;
}
