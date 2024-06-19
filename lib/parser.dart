class Parser {
  Parser({
    required this.datetime,
    this.datesplitter,
  });
  final String datetime;
  final String? datesplitter;
  
  List<String> _splited(){
    if(datetime.trim().isEmpty){
      throw Exception("Wrong format! DateTime cannot be empty");
    }
    return datetime.trim().split(' ');
  }
  int _size(){
    int length = _splited().length;
    if(length > 2){
      
      throw Exception("Wrong format! ($datetime) correct format: yyyy-MM-dd hh:mm:ss");
    }
    return _splited().length;
  }
  bool _itsCombo(){
    return _size() == 2;
  }
  String dateCheck(String date, 
  String ptrn){
    List<String> splitted = date.split(ptrn);
    int length = splitted.length;
    if(length > 3){
      throw Exception("Wrong format! ($datetime) correct format: yyyy-MM-dd hh:mm:ss");
    }
    
    //String y = extras(splitted[0].trim()).toString().padLeft(2,'0');
    int y = int.parse(splitted[0].trim());
    int m = int.parse(splitted[1].trim());
    int d = int.parse(splitted[2].trim());
    
    if(m%13 == 0){
      int pgm = (y-3)%4 == 0? 6:5;
      int dr = extras(d, pgm);
      int dx = d - dr;
      // month
      int mr = extras(m, 13);
      int mx = m - mr + (dr>0? 1:0);
      // year
      int yx = y + (mr>0? );
    }
  }
  int extras(int num, int? modulu){
    
    if(modulu != null && num > modulu){
    return num - modulu;
    }
    return 0;
  }
  date(String date){
    if(datesplitter == null){
      if(!date.contains("-")){
        throw Exception("Wrong format! ($datetime) correct format: yyyy-MM-dd hh:mm:ss");
      }
      List<>date.split('-');
      int day = int.parse()
    }
  }
  x(){
    if(_itsCombo()){
    String date = _splited()[0]
      
    }else{
      
    }
  }
  
  
}