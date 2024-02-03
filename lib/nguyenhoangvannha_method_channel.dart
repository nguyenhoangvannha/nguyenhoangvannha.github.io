import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'nguyenhoangvannha_platform_interface.dart';

/// An implementation of [NguyenhoangvannhaPlatform] that uses method channels.
class MethodChannelNguyenhoangvannha extends NguyenhoangvannhaPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('nguyenhoangvannha');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
