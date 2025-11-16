import 'package:hive_flutter/hive_flutter.dart';
import '../models/rental_model.dart';

class RentalHiveService {
  static const String boxName = 'rentals';

  Future<void> init() async {
    await Hive.openBox<RentalModel>(boxName);
  }

  Box<RentalModel> get box => Hive.box<RentalModel>(boxName);

  Future<void> addRental(RentalModel rental) async => await box.add(rental);

  List<RentalModel> getAllRentals() => box.values.toList();

  Future<void> deleteRental(RentalModel rental) async => await rental.delete();

  Future<void> updateRental(RentalModel rental) async => await rental.save();
}
