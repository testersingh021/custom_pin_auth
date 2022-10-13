#import "CustomPinAuthPlugin.h"
#if __has_include(<custom_pin_auth/custom_pin_auth-Swift.h>)
#import <custom_pin_auth/custom_pin_auth-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "custom_pin_auth-Swift.h"
#endif

@implementation CustomPinAuthPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCustomPinAuthPlugin registerWithRegistrar:registrar];
}
@end
