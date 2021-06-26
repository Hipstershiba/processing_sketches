float tileAmount;
float margin;
float tileSize;
PVector screen;

void setup() {
  size (900,900);
  
  tileAmount = 10;
  margin = 1; 
  tileSize = (width/2) / (tileAmount + margin);
  screen = new PVector((width/2)-tileSize*margin,(height/2)-tileSize*margin);
}

void draw() {
  background(0);
  stroke(0);
  noFill();
  rectMode(CENTER);
  
  float a = 0;
  for(float y = (tileSize*margin)+(tileSize/2); y < height/2; y += tileSize) {
    for(float x = (tileSize*margin)+(tileSize/2); x < width/2; x += tileSize) {
      stroke(255-a);
      rect (x, y, tileSize, tileSize);
      a+=2;
    }
  }
  
  a = 0;
  for(float y = (tileSize*margin)+(tileSize/2); y < height/2; y += tileSize) {
    for(float x = width-((tileSize*margin)+(tileSize/2)); x > (width/2)-(tileSize/2); x -= tileSize) {
      stroke(255-a,0,0);
      rect (x, y, tileSize, tileSize);
      a+=2;
    }
  }
  
  a = 0;
  for(float y = height-((tileSize*margin)+(tileSize/2)); y > (height/2)-(tileSize/2); y -= tileSize) {
    for(float x = (tileSize*margin)+(tileSize/2); x < width/2; x += tileSize) {
      stroke(0,255-a,0);
      rect (x, y, tileSize, tileSize);
      a+=2;
    }
  }
  
  a = 0;
  for(float y = height-((tileSize*margin)+(tileSize/2)); y > (height/2)-(tileSize/2); y -= tileSize) {
    for(float x = width-((tileSize*margin)+(tileSize/2)); x > (width/2)-(tileSize/2); x -= tileSize) {
      stroke(0,0,255-a);
      rect (x, y, tileSize, tileSize);
      a+=2;
    }
  }
}
