import 'package:bloc/bloc.dart';
import 'package:demorental/feature/add_new_rental/data/models/rental_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../data/repo/rental_repo.dart';

part 'rental_state.dart';
part 'rental_cubit.freezed.dart';

@injectable
class RentalCubit extends Cubit<RentalState> {
  final RentalRepository _rentalRepository;
  RentalCubit(this._rentalRepository) : super(RentalState.initial());

  void loadRentals() {
    final rentals = _rentalRepository.getAllRentals();
    emit(RentalState.success(rentals: rentals));
  }
  Future<void> addRental(RentalModel rental) async {
    await _rentalRepository.addRental(rental);
    loadRentals();
  }
   Future<void> deleteRental(RentalModel rental) async {
    await _rentalRepository.deleteRental(rental);
    loadRentals();
  }

  Future<void> updateRental(RentalModel rental) async {
    await _rentalRepository.updateRental(rental);
    loadRentals();
  }
}
