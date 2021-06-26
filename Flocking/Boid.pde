class Boid {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  float r;
  float maxForce; //muda direção
  float maxSpeed;
  float hue;
  
  Boid(float x, float y) {
    acceleration = new PVector(0, 0);
    velocity = PVector.random2D();
    
    position = new PVector(x, y);
    r = 2.0;          //mudar depois
    maxSpeed = 2;
    maxForce = 0.03;
  }
  
  void run(ArrayList<Boid> boids) {
    flock(boids);
    update();
    borders();
    render();
  }
  
  void applyForce(PVector force) {
     acceleration.add(force); //adicionar massa a=f/m
  }
  
  void flock(ArrayList<Boid> boids) {
    PVector sep = separate(boids);  //distancia
    PVector ali = align(boids);     // alinhamento
    PVector coh = cohesion(boids);  // agrupamento
    
    sep.mult(1.5);
    ali.mult(1.0);
    coh.mult(1.0);
  
    applyForce(sep);
    applyForce(ali);
    applyForce(coh);
  }
  
  void update() {
    velocity.add(acceleration);
    velocity.limit(maxSpeed);
    position.add(velocity);
    acceleration.mult(0);
  }
  
  PVector seek(PVector target) {
    PVector desired = PVector.sub(target,position);
    desired.setMag(maxSpeed);
    PVector steer = PVector.sub(desired, velocity);
    steer.limit(maxForce);
    return steer;
  }
  
  void render() { //forma do boid
    colorMode(HSB);
    float theta = velocity.heading() + radians(90);
    
    fill(hue,175,255,255);
    noStroke();
    if (hue > 255) {
      hue = 0;
    } else {
      hue += 0.2;
    }
    strokeWeight(2 );
    //stroke(hue,175,0,25);
    pushMatrix();
    translate(position.x, position.y);
    rotate(theta);
    //circle(0,0,0.15*r);
    //line(0,0,random(-5,5),-50);
    beginShape(TRIANGLES);
    vertex(0, -r*5);
    vertex(-r*0.5, r*0.5);
    vertex(r*0.5, r*0.5);
    endShape();
    popMatrix();
  }
  
  void borders() {
    if (position.x < -r) position.x = width+r;
    if (position.y < -r) position.y = height+r;
    if (position.x > width+r) position.x = -r;
    if (position.y > height+r) position.y = -r;
  }
  
  PVector separate(ArrayList<Boid> boids) {
    float desiredSeparation = 25.0f;
    PVector steer = new PVector(0, 0, 0);
    int count = 0;
    
    for(Boid other : boids) {
      float d = PVector.dist(position, other.position);
      if((d >0) && (d < desiredSeparation)) {
        PVector diff = PVector.sub(position, other.position);
        diff.normalize();
        diff.div(d);
        steer.add(diff);
        count ++;
      }
    }
    if (count > 0) {
      steer.div((float)count);
    }
    
    if (steer.mag() > 0) {
    steer.setMag(maxSpeed);
    steer.sub(velocity);
    steer.limit(maxForce);
    }  
    return steer; 
  }
  
  PVector align(ArrayList<Boid> boids) {
    float neighbordist = 50; //mudar
    PVector sum = new PVector(0, 0);
    int count = 0;
    for (Boid other : boids){
       float d = PVector.dist(position, other.position);
       if ((d > 0) && (d < neighbordist)) {
         sum.add(other.velocity);
         count ++;
       }
    }
    if (count > 0) {
      sum.div((float)count);
      sum.setMag(maxSpeed);
      PVector steer = PVector.sub(sum, velocity);
      steer.limit(maxForce);
      return steer;
    } else {
      return new PVector(0, 0);
    }
  }
  PVector cohesion(ArrayList<Boid> boids) {
    float neighbordist = 50;
    PVector sum = new PVector(0, 0);
    int count = 0;
    
    for (Boid other : boids) {
      float d = PVector.dist(position, other.position);
      if ((d > 0) && (d < neighbordist)) {
        sum.add(other.position);
        count++;
      }
    }
    if (count > 0) {
      sum.div(count);
      return seek(sum);
    } else {
      return new PVector(0, 0);
    }
  }
}
