
import 'package:black_box/features/notifications/domain/repositories/notification_repository.dart';

class MakeAsReadUseCase{
  final NotificationRepository _notificationRepository;
  MakeAsReadUseCase(this._notificationRepository);
  call(){
    return _notificationRepository.makeNotificationRead();
  }
}