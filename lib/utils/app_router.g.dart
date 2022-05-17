// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    CollectionScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData, 
        child: const CollectionScreen(),
      );
    },
    FormScreenRoute.name: (routeData) {
      final args = routeData.argsAs<FormScreenRouteArgs>(
        orElse: () => const FormScreenRouteArgs()
      );
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: FormScreen(
          key: args.key, 
          isEdit: args.isEdit
        )
      );
    }
  };

  @override
  List<RouteConfig> get routes => [
    RouteConfig(CollectionScreenRoute.name, path: '/'),
    RouteConfig(FormScreenRoute.name, path: '/new')
  ];
}

/// generated route for
/// [CollectionScreenRoute]
class CollectionScreenRoute extends PageRouteInfo<void> {
  const CollectionScreenRoute() : super(CollectionScreenRoute.name, path: '/');

  static const String name = 'Movies Collection';
}

/// generated route for
/// [FormScreenRoute]
class FormScreenRoute extends PageRouteInfo<FormScreenRouteArgs> {
  FormScreenRoute({Key? key, bool isEdit = false}) : super(
    FormScreenRoute.name,
    path: '/new',
    args: FormScreenRouteArgs(
      key: key, 
      isEdit: isEdit
    )
  );

  static const String name = 'New Movie';
}

class FormScreenRouteArgs {
  const FormScreenRouteArgs({this.key, this.isEdit = false});

  final Key? key;

  final bool isEdit;

  @override
  String toString() {
    return 'FormScreenRouteArgs{key: $key, isEdit: $isEdit}';
  }
}
