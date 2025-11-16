import 'package:freezed_annotation/freezed_annotation.dart';
part 'theme_state.freezed.dart';
@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.initial() = Initial;

  const factory ThemeState.loading() = Loading;

  const factory ThemeState.changeState() = ChangeState;

  const factory ThemeState.errorState() = ErrorState;
}