#include "include/custom_pin_auth/custom_pin_auth_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "custom_pin_auth_plugin.h"

void CustomPinAuthPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  custom_pin_auth::CustomPinAuthPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
