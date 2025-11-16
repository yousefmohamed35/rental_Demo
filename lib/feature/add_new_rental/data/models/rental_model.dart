import 'package:hive/hive.dart';
import 'package:flutter/material.dart';

class RentalModel extends HiveObject {
  String type;
  String? homeLocation;
  String? carType;
  DateTime date;
  TimeOfDay time;

  RentalModel({
    required this.type,
    this.homeLocation,
    this.carType,
    required this.date,
    required this.time,
  });
}

/// TypeAdapter يدوي
class RentalModelAdapter extends TypeAdapter<RentalModel> {
  @override
  final int typeId = 0;

  @override
  RentalModel read(BinaryReader reader) {
    final type = reader.readString();
    final homeLocation = reader.readBool() ? reader.readString() : null;
    final carType = reader.readBool() ? reader.readString() : null;
    final date = DateTime.parse(reader.readString());
    final hour = reader.readInt();
    final minute = reader.readInt();

    return RentalModel(
      type: type,
      homeLocation: homeLocation,
      carType: carType,
      date: date,
      time: TimeOfDay(hour: hour, minute: minute),
    );
  }

  @override
  void write(BinaryWriter writer, RentalModel obj) {
    writer.writeString(obj.type);
    writer.writeBool(obj.homeLocation != null);
    if (obj.homeLocation != null) writer.writeString(obj.homeLocation!);

    writer.writeBool(obj.carType != null);
    if (obj.carType != null) writer.writeString(obj.carType!);

    writer.writeString(obj.date.toIso8601String());
    writer.writeInt(obj.time.hour);
    writer.writeInt(obj.time.minute);
  }
}
