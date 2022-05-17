import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie/mobx/movie_list.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'injection.dart' as di;
import 'utils/app_router.dart';

void main() {
  di.init();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = GetIt.I<AppRouter>();

    return Provider<MovieList>(
      create: (_) => MovieList(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Movie',
        themeMode: ThemeMode.dark,
        theme: ThemeData.dark(),
        routerDelegate: AutoRouterDelegate(router),    
        routeInformationParser: router.defaultRouteParser(), 
      ),
    );
  }
}
