// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projects_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoadProjectsProjectsEvent extends LoadProjectsProjectsEvent {
  factory _$LoadProjectsProjectsEvent(
          [void Function(LoadProjectsProjectsEventBuilder)? updates]) =>
      (new LoadProjectsProjectsEventBuilder()..update(updates))._build();

  _$LoadProjectsProjectsEvent._() : super._();

  @override
  LoadProjectsProjectsEvent rebuild(
          void Function(LoadProjectsProjectsEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoadProjectsProjectsEventBuilder toBuilder() =>
      new LoadProjectsProjectsEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoadProjectsProjectsEvent;
  }

  @override
  int get hashCode {
    return 341442299;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'LoadProjectsProjectsEvent').toString();
  }
}

class LoadProjectsProjectsEventBuilder
    implements
        Builder<LoadProjectsProjectsEvent, LoadProjectsProjectsEventBuilder> {
  _$LoadProjectsProjectsEvent? _$v;

  LoadProjectsProjectsEventBuilder();

  @override
  void replace(LoadProjectsProjectsEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoadProjectsProjectsEvent;
  }

  @override
  void update(void Function(LoadProjectsProjectsEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoadProjectsProjectsEvent build() => _build();

  _$LoadProjectsProjectsEvent _build() {
    final _$result = _$v ?? new _$LoadProjectsProjectsEvent._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
