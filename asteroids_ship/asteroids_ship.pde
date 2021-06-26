Ship ship; 

void setup() {
  size(900,900);
  background(0);
  
  ship = new Ship();
}

void draw() {
  //background(0);
  bg();
  
  ship.update();
  ship.edge();
  ship.display();
}

void bg() {
  pushMatrix();
  noStroke();
  fill(0);
  rect(width/2,height/2,width,height);
  popMatrix();
}

void keyPressed() {
  if(key == CODED && keyCode == LEFT) {
    ship.turn(-0.06);
  } else if (key == CODED && keyCode == RIGHT) {
    ship.turn(0.06);
  } else if (key == CODED && keyCode == UP) {
    ship.thrust();
  }
}
