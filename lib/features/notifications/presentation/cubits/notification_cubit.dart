
import 'package:black_box/features/notifications/domain/usecases/check_notification_usecase.dart';
import 'package:black_box/features/notifications/domain/usecases/get_notifications_usecase.dart';
import 'package:black_box/features/notifications/domain/usecases/make_as_read_usecase.dart';
import 'package:black_box/features/notifications/presentation/cubits/notification_state.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import '../../../../core/errors/auth_exception.dart';
import '../../../../core/network/network_info.dart';

class NotificationCubit extends Cubit<NotificationState>{
  GetNotificationsUseCase getNotificationsUseCase;
  MakeAsReadUseCase makeAsReadUseCase;
  CheckNotificationsUseCase checkNotificationsUseCase;
  NetworkInfo network = NetworkInfo();
  NotificationCubit(this.getNotificationsUseCase,this.makeAsReadUseCase,this.checkNotificationsUseCase) : super(NotificationLoading());
  getNotifications() async{
    emit(NotificationLoading());
    try{
      final notifications = await getNotificationsUseCase();
      emit(NotificationSuccess(notifications.notifications));
    } on DioException catch (e) {
      if(await network.isConnected){
        if (e.response != null) {
          emit(NotificationFailure(InvalidCredentialsException().message));
        }
      } else {
        emit(NotificationFailure("No Internet connection"));
      }
    }
  }


  Future<void> makeAsRead() async{
    emit(NotificationLoading());
    try{
      await makeAsReadUseCase();
      final notifications = await getNotificationsUseCase();
      emit(NotificationSuccess(notifications.notifications));
    } on DioException catch (e) {
      if(await network.isConnected){
        if (e.response != null) {
          emit(NotificationFailure("Failed To load data"));
        }
      } else {
        emit(NotificationFailure("No Internet connection"));
      }
    }
  }

  Future<void> checkNotification() async{
    emit(NotificationLoading());
    try{
      await checkNotificationsUseCase();
      emit(NotificationCheck());
    } on DioException catch (e) {
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