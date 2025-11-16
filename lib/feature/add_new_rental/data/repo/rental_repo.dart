import 'package:injectable/injectable.dart';

import '../models/rental_model.dart';
import '../services/rental_services.dart';


@lazySingleton
class RentalRepository {
  final RentalHiveService service;

  RentalRepository({required this.service});

  Future<void> addRental(RentalModel rental)async { 
  await  service.addRental(rental);
  }

  List<RentalModel> getAllRentals() => service.getAllRentals();

  Future<void> deleteRental(RentalModel rental) => service.deleteRental(rental);

  Future<void> updateRental(RentalModel rental) => service.updateRental(rental);
}
