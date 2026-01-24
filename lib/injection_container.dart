
import 'package:get_it/get_it.dart';
import 'injection.dart';

final s1 = GetIt.instance;

Future<void> init() async{
  await initAuthFeature();
}