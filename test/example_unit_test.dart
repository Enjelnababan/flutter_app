import 'package:flutter_test/flutter_test.dart';

int tambah(int a, int b) => a + b;

void main() {
  test('penjumlahan harus benar', () {
    expect(tambah(2, 3), 5);
  });
}
