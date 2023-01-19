import 'package:finace_app/Data/1.data.dart';

List<money> geter_top() {
  money snap_food = money();
  snap_food.time = 'jan 30 2022';
  snap_food.image = '88.jpg';
  snap_food.buy = true;
  snap_food.fee = '-\$ 100';
  snap_food.name = 'snap food';
  money snap = money();
  snap.image = '2.jpg';
  snap.time = 'Today';
  snap.buy = true;
  snap.fee = 'Transfer';
  snap.name = 'Transfer';

  return [snap_food, snap];
}
