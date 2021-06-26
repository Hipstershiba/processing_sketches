Objeto O;
float t;
void setup(){
  size(900,900);
  //fullScreen();
  O =  new Objeto(height/2,height/2,height);
  //O.d = 250;
}

void draw(){
  background(10,25,50);
  background(0);
  //O.x = mouseX;
  //O.y = mouseY;
  
  for(int i = 0; i < 10; i++){
    O.bw_circle(O.d-i*40,-t);
    O.yin_yang(0,0,20+i*40);
  }
  
    //O.bw_circle(O.d,-t);
    //O.yin_yang(0,0,100);
    //O.bw_circle(O.d-200,-t);
    //O.yin_yang(0,0,300);
    O.bw_circle(O.d-400,-t);
    O.yin_yang(0,0,500);
  t += 0.01;
  //O.d = mouseX;
}
