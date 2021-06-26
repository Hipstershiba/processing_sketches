class Objeto{
  float x, y, d;
  Objeto(float dx, float dy, float dd){
    x=dx;
    y=dy;
    d=dd;
  }
  
  void bw_circle(){
    noStroke();
    fill(255);
    arc (x,y,d,d,PI+a,TWO_PI+a);
    fill(0);
    arc (x,y,d,d,0+a,PI+a);
  }
  
  void yin_yang(float offx, float offy){
    noStroke();
    fill(0);
    arc (offx,offy,d/2,d/2,PI+b,TWO_PI+b);
    fill(255);
    arc (offx,offy,d/2,d/2,0+b,PI+b);
    fill(255);
    circle(offx+map(cos(b),0,1,0,d/8),offy+map(sin(b),0,1,0,d/8),d/4);
    fill(0);
    circle(-d/8+offx+map(cos(b),0,1,d/8,0),-d/8+offy+map(sin(b),0,1,d/8,0),d/4);
    fill(0);
    circle(offx+map(cos(b),0,1,0,d/8),offy+map(sin(b),0,1,0,d/8),d/8);
    fill(255);
    circle(-d/8+offx+map(cos(b),0,1,d/8,0),-d/8+offy+map(sin(b),0,1,d/8,0),d/8);
  }
}
