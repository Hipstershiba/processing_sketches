class Mover {

  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector time;
  float maxSpeed;
  float alpha;

  Mover() {
    location = new PVector(0, 0);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    maxSpeed = 5;
    time = new PVector(0, 10000);
    alpha = 255;
  }

  Mover(float x, float y) {
    location = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    maxSpeed = 5;
    time = new PVector(0, 10000+x);
    alpha = 255;
  }

  void update() {
    //acceleration = PVector.random2D();

    perlinAcc();

    //PVector mouse = new PVector(map(mouseX, 0, width, -width/2, width/2),map(mouseY, 0, height, -height/2, height/2));
    //PVector dir = PVector.sub(mouse,location);
    //float accValue = 0.005;
    //dir.normalize();
    //dir.mult(accValue);
    //acceleration = dir;

    //accelerate();

    //perlinAcc();

    velocity.add(acceleration);
    velocity.limit(maxSpeed);
    if(sin(radians(alpha)) <= -0.9) {
      location.add(velocity);
    }

  }

  void display() {
    noStroke();
    fill(125, 225, 25, map(sin(radians(alpha)), -0.8, 1, 0, 255));
    ellipse(location.x, location.y, 16, 16);
    alpha+= 8;
    println(map(mouseX, 0, width, 0, 360));
    if (alpha >= 360) {
      alpha = 0;
    }
  }

  void accelerate() {
    if (keyPressed) {
      if (key == CODED) {
        if (keyCode == UP) {
          acceleration.add(0.0001, 0.0001);
        } else if (keyCode == DOWN) {
          acceleration.sub(0.0001, 0.0001);
        }
      }
    } else {
      acceleration.set(0, 0);
    }
    //println(acceleration);
  }

  void perlinAcc() {
    acceleration.x = map(noise(time.x), 0, 1, -0.1, 0.1);
    acceleration.y = map(noise(time.y), 0, 1, -0.1, 0.1);
    time.add(0.05, 0.05);
  }

  void mouseAcc() {
    PVector mouse = new PVector(mouseX, mouseY);
    PVector dir = PVector.sub(mouse, location);
    float accValue = 1;
    dir.normalize();
    dir.mult(accValue);
  }

  void checkEdges() {
    if (location.x > width/2) {
      location.x = -width/2;
    } else if (location.x < -width/2) {
      location.x = width/2;
    }

    if (location.y > height/2) {
      location.y = -height/2;
    } else if (location.y < -height/2) {
      location.y = height/2;
    }
  }

  void edge2() {
    if (location.x < -width/2) {
      location.x =  -width/2;
    } else if (location.x > width/2) {
      location.x = width/2;
    }

    if (location.y < -height/2) {
      location.y = -height/2;
    } else if (location.y > height/2) {
      location.y = height/2;
    }
  }

  void edge3() {
    if (location.x < -width/2) {
      location.x =  -width/2;
      velocity.mult(-1);
    } else if (location.x > width/2) {
      location.x = width/2;
      velocity.mult(-1);
    }

    if (location.y < -height/2) {
      location.y = -height/2;
      velocity.mult(-1);
    } else if (location.y > height/2) {
      location.y  = height/2;
      velocity.mult(-1);
    }
  }
}
