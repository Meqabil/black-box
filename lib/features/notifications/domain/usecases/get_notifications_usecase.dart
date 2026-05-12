import 'package:black_box/features/notifications/domain/repositories/notification_repository.dart';

class GetNotificationsUseCase{
  final NotificationRepository _notificationRepository;
  GetNotificationsUseCase(this._notificationRepository);
  Future call(){
    return _notificationRepository.getNotification();
  }
}