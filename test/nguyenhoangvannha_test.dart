import 'package:flutter_test/flutter_test.dart';
import 'package:nguyenhoangvannha/nguyenhoangvannha.dart';
import 'package:nguyenhoangvannha/nguyenhoangvannha_platform_interface.dart';
import 'package:nguyenhoangvannha/nguyenhoangvannha_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockNguyenhoangvannhaPlatform
    with MockPlatformInterfaceMixin
    implements NguyenhoangvannhaPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final NguyenhoangvannhaPlatform initialPlatform = NguyenhoangvannhaPlatform.instance;

  test('$MethodChannelNguyenhoangvannha is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelNguyenhoangvannha>());
  });

  test('getPlatformVersion', () async {
    Nguyenhoangvannha nguyenhoangvannhaPlugin = Nguyenhoangvannha();
    MockNguyenhoangvannhaPlatform fakePlatform = MockNguyenhoangvannhaPlatform();
    NguyenhoangvannhaPlatform.instance = fakePlatform;

    expect(await nguyenhoangvannhaPlugin.getPlatformVersion(), '42');
  });
}
