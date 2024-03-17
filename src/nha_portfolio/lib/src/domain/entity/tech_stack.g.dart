// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tech_stack.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TechStack> _$techStackSerializer = new _$TechStackSerializer();

class _$TechStackSerializer implements StructuredSerializer<TechStack> {
  @override
  final Iterable<Type> types = const [TechStack, _$TechStack];
  @override
  final String wireName = 'TechStack';

  @override
  Iterable<Object?> serialize(Serializers serializers, TechStack object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.icon;
    if (value != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TechStack deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TechStackBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$TechStack extends TechStack {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? icon;

  factory _$TechStack([void Function(TechStackBuilder)? updates]) =>
      (new TechStackBuilder()..update(updates))._build();

  _$TechStack._({this.id, this.name, this.icon}) : super._();

  @override
  TechStack rebuild(void Function(TechStackBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TechStackBuilder toBuilder() => new TechStackBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TechStack &&
        id == other.id &&
        name == other.name &&
        icon == other.icon;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TechStack')
          ..add('id', id)
          ..add('name', name)
          ..add('icon', icon))
        .toString();
  }
}

class TechStackBuilder implements Builder<TechStack, TechStackBuilder> {
  _$TechStack? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  TechStackBuilder();

  TechStackBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _icon = $v.icon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TechStack other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TechStack;
  }

  @override
  void update(void Function(TechStackBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TechStack build() => _build();

  _$TechStack _build() {
    final _$result = _$v ?? new _$TechStack._(id: id, name: name, icon: icon);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
