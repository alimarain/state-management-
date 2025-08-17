import 'package:stacked/stacked.dart';

class CounterViewmodel extends BaseViewModel{
  String name ="ali";
  int counter =0;

inc (){
  counter ++;
  rebuildUi();
}
dec(){
  counter --;
  rebuildUi();
}
}