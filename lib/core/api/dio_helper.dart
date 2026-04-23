import 'package:dio/dio.dart';
import 'package:black_box/core/constants/global.dart';

class DioHelper {

  static Dio dio = Dio(
    BaseOptions(
      receiveDataWhenStatusError: true,
    ),
  );

  static void init() {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {

          // ✅ add token automatically
          final token = pref!.getString("token");
          if (token != null) {
            options.headers["Authorization"] = "Bearer $token";
          }
          options.headers["Accept"] = "application/json";
          return handler.next(options);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (DioException error, handler) async {
          print("Error");
          print("ERROR => ${error.response?.statusCode}");

          // 🔥 handle 401
          if (error.response?.statusCode == 401) {
            // logout logic هنا
            pref!.remove("login_state");
          }

          return handler.next(error);
        },
      ),
    );
  }
}