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
  final String description;
  @override
  final String techStack;
  @override
  final String repoLink;
  @override
  final String demoLink;

  factory _$Project([void Function(ProjectBuilder)? updates]) =>
      (new ProjectBuilder()..update(updates))._build();

  _$Project._(
      {required this.id,
      required this.title,
      required this.description,
      required this.techStack,
      required this.repoLink,
      required this.demoLink})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Project', 'id');
    BuiltValueNullFieldError.checkNotNull(title, r'Project', 'title');
    BuiltValueNullFieldError.checkNotNull(
        description, r'Project', 'description');
    BuiltValueNullFieldError.checkNotNull(techStack, r'Project', 'techStack');
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
        description == other.description &&
        techStack == other.techStack &&
        repoLink == other.repoLink &&
        demoLink == other.demoLink;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, techStack.hashCode);
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
          ..add('description', description)
          ..add('techStack', techStack)
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

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _techStack;
  String? get techStack => _$this._techStack;
  set techStack(String? techStack) => _$this._techStack = techStack;

  String? _repoLink;
  String? get repoLink => _$this._repoLink;
  set repoLink(String? repoLink) => _$this._repoLink = repoLink;

  String? _demoLink;
  String? get demoLink => _$this._demoLink;
  set demoLink(String? demoLink) => _$this._demoLink = demoLink;

  ProjectBuilder();

  ProjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _description = $v.description;
      _techStack = $v.techStack;
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
    final _$result = _$v ??
        new _$Project._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Project', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'Project', 'title'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'Project', 'description'),
            techStack: BuiltValueNullFieldError.checkNotNull(
                techStack, r'Project', 'techStack'),
            repoLink: BuiltValueNullFieldError.checkNotNull(
                repoLink, r'Project', 'repoLink'),
            demoLink: BuiltValueNullFieldError.checkNotNull(
                demoLink, r'Project', 'demoLink'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
