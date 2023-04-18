// Without null safety:
bool isEmpty(String? string) => string?.length == 0;

main() {
  bool b = isEmpty(null);
  print('null is Empty = $b');

  b = isEmpty("");
  print('"" is Empty = $b');
}
