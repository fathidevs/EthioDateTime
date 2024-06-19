class BuildMonths {
  BuildMonths({required this.days});
  final int days;
  
 int _pagume(int months){
    final int pgmStart = 2;
    int ctr = months~/12+pgmStart;
    return ctr%4 == 0? 6:5;
  }

 List<List<int>> output(){
    
  int d = days;
  List<List<int>> months = [];
  int ctr = 0;

  while (d >= 30) {
    months.add(List.generate(30, (index) => index + 1));
    d -= 30;
    int staticDaysInMonth =months.length-ctr;
    if (staticDaysInMonth%12 == 0){
      ctr++;
      d -= _pagume(staticDaysInMonth);
    months.add(List.generate(
      _pagume(staticDaysInMonth), 
      (index) => index + 1));
    }
  }

  if (d > 0) {
    months.add(List.generate(d, (index) => index + 1));
  }

  return months;
  }
 int current(){
   return output().length%13;
 }
}