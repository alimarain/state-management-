import 'package:learnstacked/services/counter_service.dart';
import 'package:learnstacked/ui/counter/counter_view.dart';
import 'package:learnstacked/ui/home/home_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: CounterView, initial: true),
    MaterialRoute(page: HomeView),
  ],
  dependencies: [
    Singleton(classType: NavigationService),
    LazySingleton(classType: CounterService),
  ],
)
class App {}