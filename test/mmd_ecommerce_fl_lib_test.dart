import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce_fl_lib.dart';

void main() {
  const MethodChannel channel = MethodChannel('mmd_ecommerce_fl_lib');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await MmdEcommerceFlLib.platformVersion, '42');
  });
}
