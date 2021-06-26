class Mover {
  
  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector time;
  float maxSpeed;
  
  Mover() {
    location = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    maxSpeed = 5;
    time = new PVector(0,10000);
  }
  
  Mover(float x, float y) {
    location = new PVector(x, y);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    maxSpeed = 10;
    time = new PVector(0,10000);
  }
  
  void update() {
    acceleration = PVector.random2D();
    
    //perlinAcc();
    
    //PVector mouse = new PVector(mouseX,mouseY);
    //PVector dir = PVector.sub(mouse,location);
    //float accValue = 0.005;
    //dir.normalize();
    //dir.mult(accValue);
    //acceleration = dir;
    
    //accelerate();
    
    perlinAcc();
    
    velocity.add(acceleration);
    velocity.limit(maxSpeed);
    location.add(velocity);  
  }
  
  void display() {
    noStroke();
    fill(50, 125, 25);
    ellipse(location.x,location.y,16,16);
  }
  
  void accelerate() {
    if(keyPressed) {
      if(key == CODED) {
        if(keyCode == UP) {
          acceleration.add(0.0001,0.0001);
        } else if (keyCode == DOWN) {
          acceleration.sub(0.0001,0.0001);
        }        
      }
    } else {
      acceleration.set(0,0);
    }
    //println(acceleration);
  }
  
  void checkEdges() {
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }
 
    if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }
  }
  
  void perlinAcc() {
    acceleration.x = map(noise(time.x),0,1,-0.1,0.1);
    acceleration.y = map(noise(time.y),0,1,-0.1,0.1);
    time.add(0.001,0.001);
  }
  
  void mouseAcc() {
    PVector mouse = new PVector(mouseX,mouseY);
    PVector dir = PVector.sub(mouse,location);
    float accValue = 1;
    dir.normalize();
    dir.mult(accValue);
    
  }
  
  void edge2() {
    if(location.x < 0) {
      location.x =  0;
    } else if(location.x > width) {
      location.x = width;
    }
    
    if(location.y < 0) {
      location.y = 0;
    } else if(location.y > height) {
      location.y = height;
    }
  }
  
  void edge3() {
    if(location.x < 0) {
      location.x =  0;
      velocity.mult(-1);
    } else if(location.x > width) {
      location.x = width;
      velocity.mult(-1);
    }
    
    if(location.y < 0) {
      location.y = 0;
      velocity.mult(-1);
    } else if(location.y > height) {
      location.y = height;
      velocity.mult(-1);
    }
  }
  
}
