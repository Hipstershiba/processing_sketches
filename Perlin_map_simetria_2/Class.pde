class Objeto {
  int tileAmount;
  int margin;
  float tileSize;
  int numLength;
  
  float[] orientation;
  float[] xvet;
  float[] yvet;


  Objeto(int ta, int marg) {
    tileAmount = ta;
    margin = marg;
    tileSize = width/2 / (tileAmount + margin);
    numLength = tileAmount;
    orientation = new float[tileAmount*tileAmount];
    xvet = new float[tileAmount];
    yvet = new float[tileAmount];

  }

  void display() {
    pushMatrix();
    strokeWeight(5);
    int index = 0;
    for (int j = 0; j < tileAmount; j ++) {
      for (int i = 0; i < tileAmount; i++) {
        stroke(255);
        tile(xvet[i], yvet[j], orientation[index]);
        index++;
      }
    }

    index = 0;
    rotate(radians(90));
    for (int j = 0; j < tileAmount; j ++) {
      for (int i = 0; i < tileAmount; i++) {
        stroke(255);
        tile(xvet[i], yvet[j], orientation[index]);
        index++;
      }
    }

    index = 0;
    rotate(radians(90));
    for (int j = 0; j < tileAmount; j ++) {
      for (int i = 0; i < tileAmount; i++) {
        stroke(255);
        tile(xvet[i], yvet[j], orientation[index]);
        index++;
      }
    }

    index = 0;
    rotate(radians(90));
    for (int j = 0; j < tileAmount; j ++) {
      for (int i = 0; i < tileAmount; i++) {
        stroke(255);
        tile(xvet[i], yvet[j], orientation[index]);
        index++;
      }
    }
    popMatrix();
  }

  void tile(float x, float y, float ori) {
    if (ori > 0) {
      line (x-tileSize/2, y-tileSize/2, x+tileSize/2, y+tileSize/2);
    } else {
      line (x+tileSize/2, y-tileSize/2, x-tileSize/2, y+tileSize/2);
    }
    
    //if (ori > 0) {
    //  line (x-tileSize/2, y-tileSize/2, x+tileSize/2, y-tileSize/2);
    //} else {
    //  line (x-tileSize/2, y-tileSize, x-tileSize/2, y+tileSize/2);
    //}
  }
  
  void calcxy() {
    for (int j = 0; j < tileAmount; j++) {
      yvet[j] = (tileSize*margin)-(tileSize*1.5)+(j*tileSize);
      for (int i = 0; i < tileAmount; i++) {
        xvet[i] = (tileSize*margin)-(tileSize*1.5)+(i*tileSize);
      }
    }
  }
  
  void calcOrientation() {
    for (int i = 0; i < orientation.length; i++) {
      orientation[i] = random(-1,1);
      orientation[0] = -1;
      if(i!=0 && i%2==0) {
        orientation[i] = 1;
      }
    }
  }
  
}
