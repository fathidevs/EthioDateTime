import 'build_months.dart';
import 'build_milli.dart';
import 'model.dart';

class EthioDateTime{
EthioDateTime({ this.milli });
final int? milli;
  static final DateTime greStartDate = DateTime.fromMillisecondsSinceEpoch(0).toUtc(); // 1962-04-23 09:00:00
  // 54 years
  // calc: 
  
  int seconds(){
    return milli ?? BuildMilli.milli;
  }
  int minutes(){
    return seconds()~/60;
  }
  int hours(){
    return minutes()~/60;
  }
  int days(){
    return hours()~/24;
  }
 List<List<int>> months(){
   BuildMonths m = BuildMonths(days:days());
   
  return m.output();
  }
  int years(){
    return months().length~/13;
  }
  int year(){
    return years()+1962;
  }
  int month(){
    return months().length%13;
  }
  int day(){
    return months().last.last;
  }
  int hour(){
    return hours()%24;
  }
  int minute(){
    return minutes()%60;
  }
  int second(){
    return seconds()%60;
  }
  Model now(){
    
    return Model(
      year: year(),
      month: month(),
      day: day(),
      hour: hour(),
      minute: minute(),
      second: seconds(),
      );
  }
  parse(String dt){
    int length = dt.split(' ').length;
    if(length > 2){
      throw Exception("Error: Wrong format! you should follow this format: yyyy-MM-dd hh:mm:ss");
    }
    if(dt.trim().isEmpty){
      throw Exception("Error: parameter cannot be empty!");
    }
    String date = dt.split(' ')[0]
    .trim();
    String? time = length==2?
    dt.split(' ')[1].trim() : null;
    
    if(date != null && !date.contains('-')){
      throw Exception("Error: Wrong format! correct date format: yyy-MM-dd");
    }
    if(time != null && !time.contains(':')){
      throw Exception("Error: Wrong format! correct time format: hh:mm:ss");
    }
    print("D $date");
    print("T $time");
  }
  parsex(String dt){
  
  }
  cal(){
    /*
   var y = months()
   .map((List<int>a) => a.length)
   .toList();
   var x = y.reduce((value, element) => value+element);
   
    //print(" ${y-days()}");
    print(" d: ${days()}");
    print(" md: ${x}");
    */
  }
}
