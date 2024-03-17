import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:nha_portfolio/src/domain/entity/serializers.dart';

part 'tech_stack.g.dart';

abstract class TechStack implements Built<TechStack, TechStackBuilder> {
  TechStack._();

  factory TechStack([void Function(TechStackBuilder) updates]) = _$TechStack;

  @BuiltValueField(wireName: 'id')
  String? get id;

  @BuiltValueField(wireName: 'name')
  String? get name;

  @BuiltValueField(wireName: 'icon')
  String? get icon;

  String toJson() {
    return json.encode(serializers.serializeWith(TechStack.serializer, this));
  }

  static TechStack? fromJson(String jsonString) {
    return serializers.deserializeWith(
        TechStack.serializer, json.decode(jsonString));
  }

  static Serializer<TechStack> get serializer => _$techStackSerializer;
}
