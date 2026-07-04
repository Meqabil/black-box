sealed class NotificationState {

}

class NotificationInitial extends NotificationState{}
class NotificationLoading extends NotificationState{}
class NotificationCheck extends NotificationState{}
class NotificationSuccess extends NotificationState{
  List notificationsList;
  int unreadCount;
  NotificationSuccess(this.notificationsList,this.unreadCount);
}
class NotificationFailure extends NotificationState{
  String message;
  NotificationFailure(this.message);
}