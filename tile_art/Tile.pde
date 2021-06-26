class Tile {
  
  float l;
  
  Tile(float dl) {
    l = dl;
  }
  
  void draw_tile_up(float x, float y) {
    strokeWeight(1);
    //stroke(0,0,255);
    //rect(x,y,l,l);
    //stroke(255,0,0);
    line(x,y+(l/2),x+(l/2), y);
    //stroke(0,255,0);
    line(x+(l/2),y+l,x+l, y+(l/2));
  }
  
  void draw_tile_down(float x, float y) {
    strokeWeight(1);
    //stroke(0,0,255);
    //rect(x,y,l,l);
    //stroke(255,0,0);
    line(x+(l/2),y,x+l, y+(l/2));
    //stroke(0,255,0);
    line(x, y+(l/2),x+(l/2),y+l);
  }

}
