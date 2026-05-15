import 'package:black_box/features/notifications/data/datasources/notification_datasource.dart';

import '../../domain/repositories/notification_repository.dart';

class NotificationRepositoryImpl extends NotificationRepository{
  NotificationDataSource notificationDataSource;
  NotificationRepositoryImpl(this.notificationDataSource);
  @override
  getNotification() {
    return notificationDataSource.getNotifications();
  }
  @override
  checkNotification() {
    return notificationDataSource.checkNotifications();
  }

  @override
  makeNotificationRead() {
    return notificationDataSource.makeNotificationRead();
  }
}