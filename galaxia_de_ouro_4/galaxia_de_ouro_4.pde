Galaxy gal;

void setup() {
  //size(1080,1080, P2D);
  fullScreen(P3D);
  gal = new Galaxy(250,40);
}

void draw() {
  background(30,30,40);
  translate(width/2,height/2);
  //stroke(225,225,175,75);
  gal.draw_galaxy(900,10,2,-1,0,0.01);
  //gal.draw_galaxy(1500,2,2,0.1,180, 0);
  //gal.draw_galaxy(300,5,3,-0.1,0);
  //gal.draw_galaxy(200,5,3,-0.1,0);
  //gal.draw_galaxy(100,5,3,-0.1,0);
  //stroke(0,255,255);
  //line(0,-height/2,0,height/2);
  //noLoop();
  saveFrame("spiral-######.png");
}
