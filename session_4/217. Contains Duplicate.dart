void main() {
  //best solution is to convert the list into a set and compare them to each other but this was my solution.

  List<num> nums = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2];
  nums.sort();
  bool isDuplicate = false;
  for (int i = 0; i < nums.length; i++) {
    if (i != nums.length - 1) {
      if (nums[i] == nums[i + 1]) {
        isDuplicate = true;
        break;
      }
    }
  }
  print(isDuplicate);
}
