//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <custom_pin_auth/custom_pin_auth_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) custom_pin_auth_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "CustomPinAuthPlugin");
  custom_pin_auth_plugin_register_with_registrar(custom_pin_auth_registrar);
}
