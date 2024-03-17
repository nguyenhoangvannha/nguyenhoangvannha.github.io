import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:nha_portfolio/src/domain/entity/tech_stack.dart';

part 'serializers.g.dart';

@SerializersFor([
  TechStack,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
