import 'package:stacked/stacked.dart';
import 'package:stacked_app/app/app.locator.dart';
import 'package:stacked_app/app/app.router.dart';
import 'package:stacked_app/services/counter_services.dart';
import 'package:stacked_services/stacked_services.dart';

class CounterViewmodel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final counterService = locator<CounterServices>();

  novigateToHome() {
    navigationService.navigateToHomeView();
  }

  addCounter() {
    counterService.incrementCounter();
    rebuildUi();
  }
}
