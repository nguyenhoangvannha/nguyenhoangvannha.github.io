import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'nguyenhoangvannha_method_channel.dart';

abstract class NguyenhoangvannhaPlatform extends PlatformInterface {
  /// Constructs a NguyenhoangvannhaPlatform.
  NguyenhoangvannhaPlatform() : super(token: _token);

  static final Object _token = Object();

  static NguyenhoangvannhaPlatform _instance = MethodChannelNguyenhoangvannha();

  /// The default instance of [NguyenhoangvannhaPlatform] to use.
  ///
  /// Defaults to [MethodChannelNguyenhoangvannha].
  static NguyenhoangvannhaPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NguyenhoangvannhaPlatform] when
  /// they register themselves.
  static set instance(NguyenhoangvannhaPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
