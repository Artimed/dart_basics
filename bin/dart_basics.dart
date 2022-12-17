void main() {
  int res1 = nod(17, 15);
  int res2 = nok(245, 155);
  int tobinary = 42;
  String todecimal = '101010';
  print(res1);
  print(res2);
  print(tobinary.toRadixString(2));
  print(int.parse(todecimal, radix: 2));
}

int nod(int a, int b) {
  if (b == 0) {
    return a;
  } else {
    return nod(b, a % b);
  }
}

int nok(int a, int b) {
  return (a / nod(a, b) * b).round();
}
