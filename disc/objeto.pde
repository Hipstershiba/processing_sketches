class Objeto{
  float x, y, d;
  Objeto(float dx, float dy, float dd){
    x=dx;
    y=dy;
    d=dd;
  }
  
  void bw_circle(float dd, float dt){
    noStroke();
    fill(255);
    arc (x,y,dd,dd,PI+dt,TWO_PI+dt);
    fill(0);
    arc (x,y,dd,dd,0+dt,PI+dt);
  }
  
  void yin_yang(float offx, float offy, float offd){
    noStroke();
    fill(0);
    //arc (0+offx,offy,d/2,d/2,PI+b,TWO_PI+b);
    //fill(255);
    //arc (0+offx,offy,d/2,d/2,0+b,PI+b);
    bw_circle(d-offd, t*2);
    //fill(255);
    //circle(offx+map(cos(b),0,1,0,d/8),offy+map(sin(b),0,1,0,d/8),d/4);
    //fill(0);
    //circle(-d/8+offx+map(cos(b),0,1,d/8,0),-d/8+offy+map(sin(b),0,1,d/8,0),d/4);
    //fill(0);
    //circle(offx+map(cos(b),0,1,0,d/8),offy+map(sin(b),0,1,0,d/8),d/8);
    //fill(255);
    //circle(-d/8+offx+map(cos(b),0,1,d/8,0),-d/8+offy+map(sin(b),0,1,d/8,0),d/8);
  }
}
