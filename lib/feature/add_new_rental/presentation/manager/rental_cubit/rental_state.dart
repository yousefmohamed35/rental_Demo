part of 'rental_cubit.dart';

@freezed
abstract class RentalState with _$RentalState {
  const factory RentalState.initial() = _Initial;
  const factory RentalState.loading() = _Loading;
  const factory RentalState.success({required List<RentalModel> rentals} ) = _Success;
  const factory RentalState.failed({required String message}) = _Failed;
}
