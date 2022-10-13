
import 'custom_pin_auth_platform_interface.dart';

class CustomPinAuth {
  Future<String?> getPlatformVersion() {
    return CustomPinAuthPlatform.instance.getPlatformVersion();
  }
}
