// Without null safety:
bool isEmpty(String? string) => string?.length == 0;

main() {
  isEmpty(null);
}
