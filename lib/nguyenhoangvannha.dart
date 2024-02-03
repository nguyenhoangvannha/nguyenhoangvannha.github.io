
import 'nguyenhoangvannha_platform_interface.dart';

class Nguyenhoangvannha {
  Future<String?> getPlatformVersion() {
    return NguyenhoangvannhaPlatform.instance.getPlatformVersion();
  }
}
