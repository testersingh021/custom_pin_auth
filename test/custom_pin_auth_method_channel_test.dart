import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:custom_pin_auth/custom_pin_auth_method_channel.dart';

void main() {
  MethodChannelCustomPinAuth platform = MethodChannelCustomPinAuth();
  const MethodChannel channel = MethodChannel('custom_pin_auth');

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
    expect(await platform.getPlatformVersion(), '42');
  });
}
