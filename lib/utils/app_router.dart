import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../views/screens/collection_screen.dart';
import '../views/screens/form_screen.dart';

part 'app_router.g.dart';  

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route', 
  routes: <AutoRoute>[
    AutoRoute(page: CollectionScreen, initial: true),
    AutoRoute(page: FormScreen)
  ]
)

class AppRouter extends _$AppRouter{}  