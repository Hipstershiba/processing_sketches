Particle[] algee = new Particle[10000];
float tempx;
float tempy;
int index;
float ang;

void setup() {
  //size(900,900);
  fullScreen();
  background(0);
  
  tempx = 0;
  tempy = 0;
  index = 0;
  ang = 0;
  
  for(int y = 0; y < 59; y++) {
    for(int x = 0; x < 100; x++) {
      algee[index] = new Particle(tempx+(x*15),tempy+(y*15));
      index++;
      //println(index);
    }
  }
}

void draw() {
 
  background(0);
  
  translate(width/8,height/10);
  for(int i = 0; i < 5900; i++) {
    algee[i].display();
    algee[i].update();
    algee[i].applyForce(algee[i].seno(ang));
  }
  
  if(ang<14){
    ang++;
  } else {
    ang = 0; 
  }
  
  println(algee[1].location.x);
}
