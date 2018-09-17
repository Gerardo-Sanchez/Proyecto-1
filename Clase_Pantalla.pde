class Pantalla{
  
  float x, y;
  float d;
  color c;
  float xt, yt;
  String t;
  float ts;
  
  Pantalla(float tempX, float tempY, float tempD, color tempC, String tempT, float tempXt, float tempYt, float tempTs){
    x = tempX;
    y = tempY;
    d = tempD;
    c = tempC;
    t = tempT;
    xt = tempXt;
    yt = tempYt;
    ts = tempTs;
  }

  void display(){
    noStroke();
    fill(c);
    rect(x, y, d, d);
    textSize(ts);
    fill(89, 80, 54);
    text(t, xt, yt);
  }
  
}
