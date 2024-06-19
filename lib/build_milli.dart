import 'milliseconds_start_point.dart';

class BuildMilli{
  static final int milli = DateTime.now()
  .toUtc()
  .millisecondsSinceEpoch
  ~/1000
  +9709200;
   
   static int dateToMilli(int year, int month, int day){
     int ctr = 0;
     for(int i = 1; i < year; i++){
       ctr += (
         _millisIn12Months()
       +_millisInPagume((i+1)%4 == 0)
       );
     }
     int m = month == 1? 1:month-1;
     ctr += m * _millisInMonth();
     ctr += day * _millisInDay();
     
     return ctr - _startMillis();
   }
   static int _millisInDay(){
     return 60*60*24;
   }
   static int _millisInPagume(bool pgm){
     return _millisInDay()*(pgm? 6:5);
   }
   static int _millisInMonth(){
     return _millisInDay()*30;
   }
   static int _millisIn12Months(){
     return _millisInMonth()*12;
   }
   static int _startMillis(){
     return MillisecondsStartPoint.result - 9709200;
   }
}