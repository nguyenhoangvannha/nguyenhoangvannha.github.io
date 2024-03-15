import 'package:bloc/bloc.dart';
import 'package:nha_theme/src/domain/entity/theme_type.dart';

class ThemeBloc extends Bloc<ThemeType, ThemeType> {
  ThemeBloc() : super(ThemeType.system) {
    on<ThemeType>((event, emit) {
      emit(event);
    });
  }
}
