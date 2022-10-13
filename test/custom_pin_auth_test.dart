import 'package:flutter_test/flutter_test.dart';
import 'package:custom_pin_auth/custom_pin_auth.dart';
import 'package:custom_pin_auth/custom_pin_auth_platform_interface.dart';
import 'package:custom_pin_auth/custom_pin_auth_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockCustomPinAuthPlatform
    with MockPlatformInterfaceMixin
    implements CustomPinAuthPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final CustomPinAuthPlatform initialPlatform = CustomPinAuthPlatform.instance;

  test('$MethodChannelCustomPinAuth is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelCustomPinAuth>());
  });

  test('getPlatformVersion', () async {
    CustomPinAuth customPinAuthPlugin = CustomPinAuth();
    MockCustomPinAuthPlatform fakePlatform = MockCustomPinAuthPlatform();
    CustomPinAuthPlatform.instance = fakePlatform;

    expect(await customPinAuthPlugin.getPlatformVersion(), '42');
  });
}
