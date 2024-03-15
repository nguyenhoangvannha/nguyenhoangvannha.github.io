import 'package:bloc/bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:nha_theme/src/domain/entity/theme_type.dart';
import 'package:nha_theme/src/extensions/int_ext.dart';

class ThemeBloc extends HydratedBloc<ThemeType, ThemeType> {
  ThemeBloc() : super(ThemeType.system) {
    on<ThemeType>((event, emit) {
      emit(event);
    });
  }

  @override
  ThemeType? fromJson(Map<String, dynamic> json) =>
      (json['value'] as int).themeType;

  @override
  Map<String, dynamic>? toJson(ThemeType state) => {'value': state.value};
}
