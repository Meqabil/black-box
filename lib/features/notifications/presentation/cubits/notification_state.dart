import 'package:black_box/features/notifications/domain/entities/sub_entities/notification_content_entity.dart';
sealed class NotificationState {

}

class NotificationInitial extends NotificationState{}
class NotificationLoading extends NotificationState{}
class NotificationRead extends NotificationState{}
class NotificationSuccess extends NotificationState{
  List notificationsList;
  NotificationSuccess(this.notificationsList);
}
class NotificationFailure extends NotificationState{
  String message;
  NotificationFailure(this.message);
}