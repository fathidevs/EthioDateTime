class Model {
  Model({
     this.year,
     this.month,
     this.day,
     this.hour,
     this.minute,
     this.second,
  });
  final int? year;
  final int? month;
  final int? day;
  final int? hour;
  final int? minute;
  final int? second;
  //final int?? millisecondsSinceEpoch;
  
  @override
  toString(){
    String M = month.toString().padLeft(2,'0');
    String d = day.toString().padLeft(2,'0');
    String h = hour.toString().padLeft(2,'0');
    String m = minute.toString().padLeft(2,'0');
    String s = (second!%60).toString().padLeft(2,'0');
    return "$year-$M-$d $h:$m:$s";
  }
  
  int get millisecondsSinceEpoch{
     return second!;
   }
}