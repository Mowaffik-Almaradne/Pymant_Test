import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:new_experinse/core/network/network_info.dart';

final sl = GetIt.instance;
Future<void> init() async {
//! Features - Auth :

//! Features - Global
  sl.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImplemntes(sl()),
  );
  sl.registerLazySingleton(
    () => InternetConnectionChecker(),
  );
//! Features - Global Finished
}
