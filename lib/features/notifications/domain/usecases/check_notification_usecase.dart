
import 'package:black_box/features/notifications/domain/repositories/notification_repository.dart';

class CheckNotification {
  final NotificationRepository _notificationRepository;
  CheckNotification(this._notificationRepository);
  call(){
    return _notificationRepository.checkNotification();
  }
}