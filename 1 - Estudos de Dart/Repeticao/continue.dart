void main() {
  List nums = [for (int i = 10; i <= 100; i += 10) i];
  for (int num in nums) {
    if (num < 30 || num > 50) continue;
    print('number: $num'); // 30 40 50 
  }
}
