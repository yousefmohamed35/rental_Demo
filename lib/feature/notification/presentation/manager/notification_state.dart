part of 'notification_cubit.dart';

@freezed
abstract class NotificationState with _$NotificationState {
  const factory NotificationState.initial() = _Initial;
   const factory NotificationState.scheduled() = _Scheduled;
    const factory NotificationState.cancelled() = _Cancelled;
     const factory NotificationState.error({required String error}) = _Error;
}
