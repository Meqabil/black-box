import 'package:black_box/core/network/network_info.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

class NetworkInfoImpl implements NetworkInfo{
  Future<bool> checkInternet() async {
    final bool isConnected = await InternetConnection().hasInternetAccess;
    if (isConnected) {
      return true;
    } else {
      return false;
    }
  }
  @override
  Future<bool> get isConnected => checkInternet();
}
