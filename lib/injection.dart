import 'package:flutter_movie/utils/app_router.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance; 

void init() {
  locator.registerSingleton<AppRouter>(AppRouter());
}