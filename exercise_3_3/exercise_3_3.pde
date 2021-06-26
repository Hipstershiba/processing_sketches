Mover[] car = new Mover[1];

float time;

void setup() {
  size(900,900);
  background(50);
  frameRate(60);
  
  for(int i = 0; i < car.length; i++) {
    car[i] = new Mover();
  }
  
  time = 0;
}

void draw() {
    bg();
  
  for(int i = 0; i < car.length; i++) {
    car[i].applyForce(car[i].accNoise(time));
    car[i].update();
    car[i].edge();
    car[i].display();
    
  }
  
  time += 0.004;
}

void bg() {
  push();
  noStroke();
  fill(0,5);
  rect(0,0,width,height);
  pop();
}

//void keyPressed() {
//  if (key == CODED) {
//    if(keyCode == RIGHT) {
//      car.angle += radians(10);
//    } else if (keyCode == LEFT){
//      car.angle -= radians(10);
//    }
//  }
//}
