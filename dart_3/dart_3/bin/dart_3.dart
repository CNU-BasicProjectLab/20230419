// Without null safety:
bool isEmpty(String? string) => string?.length == 0;

main() {
  bool b = isEmpty(null); // 자료형 다음에 ?를 붙이면 Null이 가능함
  print('null is Empty = $b');

  b = isEmpty("");
  print('"" is Empty = $b');
}
