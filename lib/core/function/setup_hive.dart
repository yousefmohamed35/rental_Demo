import 'package:hive_flutter/hive_flutter.dart';

import '../../feature/add_new_rental/data/models/rental_model.dart';

Future<void> setupHive()async{
  await Hive.initFlutter();

  Hive.registerAdapter(RentalModelAdapter());
  await Hive.openBox<RentalModel>('rentals');
}