import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../data/repo/notification_repo.dart';

part 'notification_state.dart';
part 'notification_cubit.freezed.dart';

@injectable
class NotificationCubit extends Cubit<NotificationState> {
  final NotificationRepository repository;
  NotificationCubit(this.repository) : super(NotificationState.initial());

  Future<void> scheduleRentalNotification({
    required int id,
    required String title,
    required String body,
    required DateTime date,
  }) async {
    try {
      await repository.scheduleNotification(
        id: id,
        title: title,
        body: body,
        scheduledDate: date,
      );
      emit(NotificationState.scheduled());
    } catch (e) {
      emit(NotificationState.error(error: e.toString()));
    }
  }
}
