import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:nha_language/src/domain/entity/language_type.dart';
import 'package:nha_language/src/extensions/string_ext.dart';

class LanguageBloc extends HydratedBloc<LanguageType, LanguageType> {
  LanguageBloc() : super(LanguageType.en) {
    on<LanguageType>((event, emit) {
      emit(event);
    });
  }

  @override
  LanguageType? fromJson(Map<String, dynamic> json) =>
      (json['value'] as String).languageType;

  @override
  Map<String, dynamic>? toJson(LanguageType state) => {'value': state.languageCode};
}
