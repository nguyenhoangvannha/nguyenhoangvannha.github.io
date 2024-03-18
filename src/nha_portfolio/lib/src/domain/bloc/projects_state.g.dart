// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projects_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProjectsState extends ProjectsState {
  @override
  final BuiltMap<String, Project> projectsMap;

  factory _$ProjectsState([void Function(ProjectsStateBuilder)? updates]) =>
      (new ProjectsStateBuilder()..update(updates))._build();

  _$ProjectsState._({required this.projectsMap}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        projectsMap, r'ProjectsState', 'projectsMap');
  }

  @override
  ProjectsState rebuild(void Function(ProjectsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectsStateBuilder toBuilder() => new ProjectsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectsState && projectsMap == other.projectsMap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, projectsMap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectsState')
          ..add('projectsMap', projectsMap))
        .toString();
  }
}

class ProjectsStateBuilder
    implements Builder<ProjectsState, ProjectsStateBuilder> {
  _$ProjectsState? _$v;

  MapBuilder<String, Project>? _projectsMap;
  MapBuilder<String, Project> get projectsMap =>
      _$this._projectsMap ??= new MapBuilder<String, Project>();
  set projectsMap(MapBuilder<String, Project>? projectsMap) =>
      _$this._projectsMap = projectsMap;

  ProjectsStateBuilder() {
    ProjectsState._init(this);
  }

  ProjectsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _projectsMap = $v.projectsMap.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectsState;
  }

  @override
  void update(void Function(ProjectsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectsState build() => _build();

  _$ProjectsState _build() {
    _$ProjectsState _$result;
    try {
      _$result = _$v ?? new _$ProjectsState._(projectsMap: projectsMap.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'projectsMap';
        projectsMap.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProjectsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
