// test/example_test.dart
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Sample Test', () {
    // Arrange: Define any variables needed for the test
    int a = 1;
    int b = 2;

    // Act: Call the method or perform the action you want to test
    int sum = a + b;

    // Assert: Verify that the result is as expected
    expect(sum, 3); // 1 + 2 should equal 3
  });
}
