class Oscilator {
  PVector loc;
  PVector ang;
  PVector amp;
  PVector period;
  
  float size;
  
  Oscilator() {
    loc = new PVector();
    ang = new PVector();
    period = new PVector(random(0,0.01),random(0,0.01),random(0,0.01));
    amp = new PVector(random(20,250),random(20,250),random(20,250));
    
    size = 25;
  }
  
  void display() {
    pushMatrix();
    translate(width/2,height/2);
    
    stroke(0,200,75);
    line(0,0,0,loc.x,loc.y,loc.z);
    
    noStroke();
    fill(0,200,75);
    circle(loc.x,loc.y,size);
    popMatrix();
  }
  
  void oscilate() {
    loc.x = amp.x * sin(ang.x);
    loc.y = amp.y * sin(ang.y);
    ang.x += period.x;
    ang.y += period.y;
  }

}
