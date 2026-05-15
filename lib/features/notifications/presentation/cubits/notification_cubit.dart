
import 'package:black_box/features/notifications/domain/usecases/get_notifications_usecase.dart';
import 'package:black_box/features/notifications/presentation/cubits/notification_state.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import '../../../../core/errors/auth_exception.dart';
import '../../../../core/network/network_info_imp.dart';

class NotificationCubit extends Cubit<NotificationState>{
  GetNotificationsUseCase getNotificationsUseCase;
  NetworkInfo network = NetworkInfo();
  NotificationCubit(this.getNotificationsUseCase) : super(NotificationLoading());
  getNotifications() async{
    emit(NotificationLoading());
    try{
      final notifications = await getNotificationsUseCase();
      emit(NotificationSuccess(notifications.notifications));
    }on DioException catch (e) {
      if(await network.isConnected){
        if (e.response != null) {
          emit(NotificationFailure(InvalidCredentialsException().message));
        }
      } else {
        emit(NotificationFailure("No Internet connection"));
      }
    }
  }
}