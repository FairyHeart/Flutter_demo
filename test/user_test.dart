import 'package:flutter_demo/json/order.dart';
import 'package:flutter_demo/json/user.dart';
import 'package:test/test.dart';

void main() {
  test('userTest', () {
    final user = User(name: 'liu', email: 'flutter@gmail.com')
      ..orders = [Order(DateTime.now(), DateTime.now().millisecondsSinceEpoch)];
    print(user.toJson());
  });

  test('order', () {
    final order = Order(DateTime.now(), DateTime.now().millisecondsSinceEpoch);
    print(order.toJson());
  });
}
