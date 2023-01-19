import 'package:finace_app/Data/1.data.dart';

List<money> geter() {
  money upwork = money();
  upwork.name = 'Adil';
  upwork.fee = "650";
  upwork.time = 'taday';
  upwork.image = '1.image.png';
  upwork.buy = false;

  money starbuckes = money();
  starbuckes.buy = true;
  starbuckes.fee = '15';
  starbuckes.image = '2.jpg';
  starbuckes.name = 'Starbuckes';
  starbuckes.time = 'Today';

  money transfer = money();
  transfer.buy = true;
  transfer.fee = '100';
  transfer.image = 'images.jpg';
  transfer.name = 'Sam';
  transfer.time = 'jan 30,2022';
  return [
    upwork,
    starbuckes,
    transfer,
    upwork,
    starbuckes,
    transfer,
  ];
}
