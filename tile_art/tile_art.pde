Tile t;
float a = 0;
float b = 0;
void setup(){
  //size(900,900);
  fullScreen();
  t = new Tile(width/100);
}

void draw(){
  background(255);
  t.draw_tile_up(mouseX, mouseY);
  //if(a % 60 == 0) {
  //  background(255);
  //  for(int i = 0; i <= width - t.l; i += t.l) {
  //    for(int j = 0; j <= height - t.l; j += t.l) {
  //      println("x:",i,"// y:",j);
  //      if(noise(b,1) < 0.5){
  //        t.draw_tile_down(i, j);
  //      } else {
  //        t.draw_tile_up(i, j);
  //      }
  //      b+=1;
  //    }
  //  }
  //}
  
  a += 1;
  //noLoop();
}
