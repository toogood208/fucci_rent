import 'package:stacked/stacked_annotations.dart';

import 'package:fucci_rent/ui/views/splashscreen/splashscreen_view.dart';

import 'package:fucci_rent/services/navigation_service.dart';

// @stacked-import
@StackedApp(routes: [
  MaterialRoute(page: SplashscreenView),
// @stacked-route
], dependencies: [
  LazySingleton(classType: NavigationService),
// @stacked-service
], logger: StackedLogger())
class App {}
