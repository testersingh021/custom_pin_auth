import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'custom_pin_auth_platform_interface.dart';

/// An implementation of [CustomPinAuthPlatform] that uses method channels.
class MethodChannelCustomPinAuth extends CustomPinAuthPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('custom_pin_auth');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
