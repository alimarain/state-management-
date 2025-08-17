
import 'package:learnstacked/ui/counter/counter_view.dart';
import 'package:learnstacked/ui/home/home_view.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(
  routes:[
MaterialRoute(page: CounterView,initial: true),
MaterialRoute(page:HomeView),
  ],
  dependencies: [],
)
class app {}