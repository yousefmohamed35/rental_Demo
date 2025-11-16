import 'package:injectable/injectable.dart';

import '../services/notification_services.dart';

@lazySingleton
class NotificationRepository {
  final NotificationService service;

  NotificationRepository({required this.service});

  Future<void> scheduleNotification({
    required int id,
    required String title,
    required String body,
    required DateTime scheduledDate,
  }) => service.scheduleNotification(
    id: id,
    title: title,
    body: body,
    scheduledDate: scheduledDate,
  );
  Future<void> showNotification({
    required int id,
    required String title,
    required String body,
  }) => service.showAddedNotification(id: id, title: title, body: body);

  Future<void> cancelNotification(int id) => service.cancelNotification(id);
}
