import 'build_milli.dart';
import 'ethio_datetime.dart';
import 'milliseconds_start_point.dart';

main(){
  EthioDateTime e = EthioDateTime();
  var a = e.year();
  var b = e.month();
  var c = e.day();
  //var d = e.hour();
  //var f = e.minute();
  //var g = e.second();
  //print(e.now().millisecondsSinceEpoch);
  //e.parse("2020-10-10 10:10:10");
  //print(DateTime.parse("2020-10-10 10.10.10"));
  int d2m = BuildMilli.dateToMilli(
  2016, 10, 12);
  print(" ${BuildMilli.dateToMilli(
  2016, 10, 12)}");
  print(" ${e.seconds()}");
  print(" ${
  BuildMilli.dateToMilli(
  2016, 10, 12) - e.seconds()
  }");
  //print(" $a-$b-$c");
  print(" ${e.now()}");
  print(" ${EthioDateTime(milli:d2m).now()}");
  
  //MillisecondsStartPoint.x();
}