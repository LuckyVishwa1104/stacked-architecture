import 'package:stacked/stacked.dart';
import 'package:stacked_app/app/app.locator.dart';
import 'package:stacked_app/services/counter_services.dart';

class HomeViewmodel extends BaseViewModel {
  final counterService = locator<CounterServices>();

  functin() {
    counterService.counter;
  }
}
