
import 'package:black_box/features/notifications/domain/repositories/notification_repository.dart';

class CheckNotificationsUseCase {
  final NotificationRepository _notificationRepository;
  CheckNotificationsUseCase(this._notificationRepository);
  call() {
    return _notificationRepository.checkNotification();
  }
}