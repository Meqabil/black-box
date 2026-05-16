sealed class NotificationState {

}

class NotificationInitial extends NotificationState{}
class NotificationLoading extends NotificationState{}
class NotificationCheck extends NotificationState{}
class NotificationSuccess extends NotificationState{
  List notificationsList;
  NotificationSuccess(this.notificationsList);
}
class NotificationFailure extends NotificationState{
  String message;
  NotificationFailure(this.message);
}