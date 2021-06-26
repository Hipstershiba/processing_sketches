class Objeto {
  
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  float angle;
  float angVelocity;
  float angAcceleration;
  
  float theta;
  
  Objeto() {
    
  }
  
  void display(float x, float y, float size) {
    pushMatrix();
    translate(x, y);
    rotate(radians(angle));
    //println(angle);
    
    stroke(0);
    strokeWeight(2);
    noFill();
    line(-size,0,size,0);
    popMatrix();
  }
  
  void update() {
    angVelocity += angAcceleration;
    angVelocity = constrain(angVelocity,-10,10);
    angle += angVelocity;
    
  }
  
  void update2() {
    angle = angAcceleration;
    if (angle < 45) {
      angle = 0;
    } else if(angle < 90) {
      angle = 45;
    } else if (angle < 135) {
      angle = 90;
    } else if (angle < 180) {
      angle = 135;
    } else if (angle < 225) {
      angle = 180;
    } else if (angle < 270) {
      angle = 225;
    } else if (angle < 315) {
      angle = 270;
    } else if (angle < 360) {
      angle = 315;
    }
  }
  
  void update3() {
    angle = angAcceleration;
    if(angle < 90) {
      angle = 45;
    } else if (angle < 180) {
      angle = 135;
    } else if (angle < 270) {
      angle = 225;
    } else if (angle < 360) {
      angle = 315;
    }
  }
  
  void update4() {
    angle = angAcceleration;
    if(angle < 90) {
      angle = 0;
    } else if (angle < 180) {
      angle = 90;
    } else if (angle < 270) {
      angle = 180;
    } else if (angle < 360) {
      angle = 270;
    }
  }
  
  void applyForce (float force) {
    angAcceleration = force;
  }
  
  float rotNoise(float time) {
    float rotNoise = map(noise(time),0,1,-0.1,0.1);
    return rotNoise;
  }
  
  float perlinRotation(float time) {
    float perlinRotation = map(noise(time),0,1,0,360);
    println(perlinRotation);
    return perlinRotation;
  }
  
}
