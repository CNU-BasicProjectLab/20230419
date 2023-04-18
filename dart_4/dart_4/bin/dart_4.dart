///* Asynchronous 비동기 함수 Future
Future<void> fetchUserOrder() {
  // Imagine that this function is fetching user info from another service or database.
  return Future.delayed(const Duration(seconds: 2), () => print('Large Latte'));
}

void main() {
  fetchUserOrder();
  print('Fetching user order...');
}
//*/

/* 비동기 함수에서 값을 리턴받을 필요가 있을 때 await & async -> 동기식으로...
Future<String> createOrderMessage() async {
  // do something....
  var order = await fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() =>
    // Imagine that this function is
    // more complex and slow.
    Future.delayed(const Duration(seconds: 2), () => 'Large Latte',);

Future<void> main() async {
  print('Fetching user order...');
  print(await createOrderMessage());
}*/

/* exercise
Future<void> printOrderMessage() async {
  print('Awaiting user order...');
  var order = await fetchUserOrder();
  print('Your order is: $order');
}

Future<String> fetchUserOrder() {
  // Imagine that this function is more complex and slow.
  return Future.delayed(const Duration(seconds: 4), () => 'Large Latte');
}

void main() async {
  countSeconds(4);
  await printOrderMessage();
}

// You can ignore this function - it's here to visualize delay time in this example.
void countSeconds(int s) {
  for (var i = 1; i <= s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}
*/
/* then 활용
void main() async {
  await getVersionName().then((value) => {print(value)});
  print("end process");
}

Future<String> getVersionName() async {
  var versionName = await lookUpVersionName();
  return versionName;
}

String lookUpVersionName() {
  return "iOS";
}*/
