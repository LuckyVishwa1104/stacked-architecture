import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_app/services/counter_services.dart';
import 'package:stacked_app/views/counter_view.dart';
import 'package:stacked_app/views/home_view.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: CounterView, initial: true),
    MaterialRoute(page: HomeView),
  ],
  dependencies: [
    Singleton(classType: NavigationService),
    LazySingleton(classType: CounterServices)
  ],
)
class App {}
