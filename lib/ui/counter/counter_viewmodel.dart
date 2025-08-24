import 'package:learnstacked/app/app.locator.dart';
import 'package:learnstacked/services/counter_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CounterViewmodel extends BaseViewModel {
  String name = 'ali';
  int counter = 10;
  final navigatioService = locator<NavigationService>();
  final counterService = locator<CounterService>();
  CounterService counterServiceSeparate = CounterService();

  int getCounterValueFromCounterService() {
    return counterService.counter;
  }

  addValueCounterInSingletonService() {
    counterService.counter++;
    rebuildUi();
  }

  int getCounterValueFromCounterServicSeparate() {
    return counterServiceSeparate.counter;
  }

  addValueCounterInWithoutSingletonService() {
    counterServiceSeparate.counter++;
    rebuildUi();
  }

  inc() {
    counter++;
    rebuildUi();
  }

  dec() {
    counter--;
    rebuildUi();
  }
}