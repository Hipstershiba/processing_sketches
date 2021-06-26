Objeto O;
float a, b = 0;
void setup(){
  size(900,900);
  //fullScreen();
  O =  new Objeto(0,0,height);
  //O.d = 250;
}

void draw(){
  background(10,25,50);
  //O.x = mouseX;
  //O.y = mouseY;
  translate(width/2, height/2);
  O.bw_circle();
  O.yin_yang(map(cos(a),0,1,0,O.d/4),map(sin(a),0,1,0,O.d/4));
  O.yin_yang(-O.d/4+map(cos(a),0,1,O.d/4,0),-O.d/4+map(sin(a),0,1,O.d/4,0));
  a -= 0.01;
  b += 0.02;
  O.d = mouseX;
}
