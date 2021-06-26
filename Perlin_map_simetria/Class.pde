class Objeto {
  int tileAmount;
  int margin;
  float tileSize;
  int numLength;
  
  float[] orientation = new float[100000000];


  Objeto(int ta, int marg) {
    tileAmount = ta;
    margin = marg;
    tileSize = width/2 / (tileAmount + margin);
    numLength = tileAmount;

  }

  void display() {

    pushMatrix(); 
    strokeWeight(5);
    int index = 0;
    for (float y = (tileSize*margin)+(tileSize/2); y < height/2; y += tileSize) {
      for (float x = (tileSize*margin)+(tileSize/2); x < width/2; x += tileSize) {
        stroke(255);
        tile(x, y, orientation[index]);
        index++;
      }
    }

    index = 0;
    for (float y = (tileSize*margin)+(tileSize/2); y < height/2; y += tileSize) {
      for (float x = width-((tileSize*margin)+(tileSize/2)); x > (width/2)-(tileSize/2); x -= tileSize) {
        //stroke(255, 0, 0);
        tile(x, y, orientation[index]);
        index++;
      }
    }

    index = 0;
    for (float y = height-((tileSize*margin)+(tileSize/2)); y > (height/2)-(tileSize/2); y -= tileSize) {
      for (float x = (tileSize*margin)+(tileSize/2); x < width/2; x += tileSize) {
        //stroke(0, 255, 0);
        tile(x, y, orientation[index]);
        index++;
      }
    }

    index = 0;
    for (float y = height-((tileSize*margin)+(tileSize/2)); y > (height/2)-(tileSize/2); y -= tileSize) {
      for (float x = width-((tileSize*margin)+(tileSize/2)); x > (width/2)-(tileSize/2); x -= tileSize) {
        //stroke(0, 0, 255);
        tile(x, y, orientation[index]);
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
  }
  
  void calcOrientation() {
    for (int i = 0; i < orientation.length ; i++) {
      orientation[i] = random(-1,1);
    }
  }
}
