#include "include/nguyenhoangvannha/nguyenhoangvannha_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "nguyenhoangvannha_plugin.h"

void NguyenhoangvannhaPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  nguyenhoangvannha::NguyenhoangvannhaPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
