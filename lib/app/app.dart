import 'package:stacked/stacked_annotations.dart';

import 'package:fucci_rent/ui/views/splashscreen/splashscreen_view.dart';
import 'package:stacked_services/stacked_services.dart';


// @stacked-import
@StackedApp(routes: [
  MaterialRoute(page: SplashscreenView, initial: true),
// @stacked-route
], dependencies: [
  LazySingleton(classType: NavigationService),
// @stacked-service
], logger: StackedLogger())
class App {}
