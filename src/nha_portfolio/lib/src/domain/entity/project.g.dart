// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Project extends Project {
  @override
  final String id;
  @override
  final String title;
  @override
  final BuiltSet<String> strengths;
  @override
  final String description;
  @override
  final String techStacks;
  @override
  final String repoLink;
  @override
  final String demoLink;

  factory _$Project([void Function(ProjectBuilder)? updates]) =>
      (new ProjectBuilder()..update(updates))._build();

  _$Project._(
      {required this.id,
      required this.title,
      required this.strengths,
      required this.description,
      required this.techStacks,
      required this.repoLink,
      required this.demoLink})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Project', 'id');
    BuiltValueNullFieldError.checkNotNull(title, r'Project', 'title');
    BuiltValueNullFieldError.checkNotNull(strengths, r'Project', 'strengths');
    BuiltValueNullFieldError.checkNotNull(
        description, r'Project', 'description');
    BuiltValueNullFieldError.checkNotNull(techStacks, r'Project', 'techStacks');
    BuiltValueNullFieldError.checkNotNull(repoLink, r'Project', 'repoLink');
    BuiltValueNullFieldError.checkNotNull(demoLink, r'Project', 'demoLink');
  }

  @override
  Project rebuild(void Function(ProjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectBuilder toBuilder() => new ProjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Project &&
        id == other.id &&
        title == other.title &&
        strengths == other.strengths &&
        description == other.description &&
        techStacks == other.techStacks &&
        repoLink == other.repoLink &&
        demoLink == other.demoLink;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, strengths.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, techStacks.hashCode);
    _$hash = $jc(_$hash, repoLink.hashCode);
    _$hash = $jc(_$hash, demoLink.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Project')
          ..add('id', id)
          ..add('title', title)
          ..add('strengths', strengths)
          ..add('description', description)
          ..add('techStacks', techStacks)
          ..add('repoLink', repoLink)
          ..add('demoLink', demoLink))
        .toString();
  }
}

class ProjectBuilder implements Builder<Project, ProjectBuilder> {
  _$Project? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  SetBuilder<String>? _strengths;
  SetBuilder<String> get strengths =>
      _$this._strengths ??= new SetBuilder<String>();
  set strengths(SetBuilder<String>? strengths) => _$this._strengths = strengths;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _techStacks;
  String? get techStacks => _$this._techStacks;
  set techStacks(String? techStacks) => _$this._techStacks = techStacks;

  String? _repoLink;
  String? get repoLink => _$this._repoLink;
  set repoLink(String? repoLink) => _$this._repoLink = repoLink;

  String? _demoLink;
  String? get demoLink => _$this._demoLink;
  set demoLink(String? demoLink) => _$this._demoLink = demoLink;

  ProjectBuilder() {
    Project._init(this);
  }

  ProjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _strengths = $v.strengths.toBuilder();
      _description = $v.description;
      _techStacks = $v.techStacks;
      _repoLink = $v.repoLink;
      _demoLink = $v.demoLink;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Project other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Project;
  }

  @override
  void update(void Function(ProjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Project build() => _build();

  _$Project _build() {
    _$Project _$result;
    try {
      _$result = _$v ??
          new _$Project._(
              id: BuiltValueNullFieldError.checkNotNull(id, r'Project', 'id'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'Project', 'title'),
              strengths: strengths.build(),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, r'Project', 'description'),
              techStacks: BuiltValueNullFieldError.checkNotNull(
                  techStacks, r'Project', 'techStacks'),
              repoLink: BuiltValueNullFieldError.checkNotNull(
                  repoLink, r'Project', 'repoLink'),
              demoLink: BuiltValueNullFieldError.checkNotNull(
                  demoLink, r'Project', 'demoLink'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'strengths';
        strengths.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Project', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
