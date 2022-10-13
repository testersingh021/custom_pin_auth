#ifndef FLUTTER_PLUGIN_CUSTOM_PIN_AUTH_PLUGIN_H_
#define FLUTTER_PLUGIN_CUSTOM_PIN_AUTH_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace custom_pin_auth {

class CustomPinAuthPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  CustomPinAuthPlugin();

  virtual ~CustomPinAuthPlugin();

  // Disallow copy and assign.
  CustomPinAuthPlugin(const CustomPinAuthPlugin&) = delete;
  CustomPinAuthPlugin& operator=(const CustomPinAuthPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace custom_pin_auth

#endif  // FLUTTER_PLUGIN_CUSTOM_PIN_AUTH_PLUGIN_H_
