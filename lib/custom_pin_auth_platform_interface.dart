import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'custom_pin_auth_method_channel.dart';

abstract class CustomPinAuthPlatform extends PlatformInterface {
  /// Constructs a CustomPinAuthPlatform.
  CustomPinAuthPlatform() : super(token: _token);

  static final Object _token = Object();

  static CustomPinAuthPlatform _instance = MethodChannelCustomPinAuth();

  /// The default instance of [CustomPinAuthPlatform] to use.
  ///
  /// Defaults to [MethodChannelCustomPinAuth].
  static CustomPinAuthPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [CustomPinAuthPlatform] when
  /// they register themselves.
  static set instance(CustomPinAuthPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
