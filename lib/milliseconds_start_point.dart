class MillisecondsStartPoint {
  
  static const int result = 61894141200;
  
  static void loop(){
    int ctr = 0;
    for(int i = 1; i < 1962; i++){
      ctr += (
        _12monthsMillis()+
        _pgmMillis((i+1)%4 == 0)
        );
      //print("year $i (${(i+1)%4})");
    }
    int total = ctr
    +(_daysMilis()*30*3)
    +(_daysMilis()*22)
    +(60*60*9);
      print("ctr $total ");
  }
  static int _daysMilis(){
    return 60*60*24;
  }
  static int _12monthsMillis(){
    return _daysMilis()*30*12;
  }
  static int _pgmMillis(bool pgm){
    return _daysMilis()*(pgm? 6:5);
  }
}

// 61894141200