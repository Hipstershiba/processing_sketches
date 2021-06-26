PImage img;
PImage dino;

void setup() {
  size(1080,675);
  img = loadImage("camisa-dinossauro-2.jpg");
  dino = img;
  dino.resize(dino.width/2,dino.height/2);
  dino.filter(GRAY);
  image(dino,0,0,dino.width,dino.height);
  //frameRate(1);
}

int index(int x, int y) {
  return x + y * dino.width;
}

void draw() {
  dino.loadPixels();
  for (int y = 0; y < dino.height-1; y++) {
    for (int x = 1; x < dino.width-1; x++) {
      color pix = dino.pixels[index(x,y)];
      float oldR = red(pix);
      float oldG = green(pix);
      float oldB = blue(pix);
      int factor = 1;
      int factor2 = factor;
      int newR = round(factor * oldR / 255) * (255/factor2);
      int newG = round(factor * oldG / 255) * (255/factor2);
      int newB = round(factor * oldB / 255) * (255/factor2);
      dino.pixels[index(x,y)] = color(newR,newG,newB);  
      
      float errR = oldR - newR;
      float errG = oldG - newG;
      float errB = oldB - newB;

      int index = index(x+1, y  );
      color c = dino.pixels[index];
      float r = red(c);
      float g = green(c);
      float b = blue(c);
      r = r + errR * 7/16.0;
      g = g + errG * 7/16.0;
      b = b + errB * 7/16.0;
      dino.pixels[index] = color(r,g,b);
      
      index = index(x-1, y+1);
      c = dino.pixels[index];
      r = red(c);
      g = green(c);
      b = blue(c);
      r = r + errR * 3/16.0;
      g = g + errG * 3/16.0;
      b = b + errB * 3/16.0;
      dino.pixels[index] = color(r,g,b);
      
      index = index(x  , y+1);
      c = dino.pixels[index];
      r = red(c);
      g = green(c);
      b = blue(c);
      r = r + errR * 5/16.0;
      g = g + errG * 5/16.0;
      b = b + errB * 5/16.0;
      dino.pixels[index] = color(r,g,b);
      
      index = index(x+1, y+1);
      c = dino.pixels[index];
      r = red(c);
      g = green(c);
      b = blue(c);
      r = r + errR * 1/16.0;
      g = g + errG * 1/16.0;
      b = b + errB * 1/16.0;
      dino.pixels[index] = color(r,g,b);
      
    }
  }
  dino.updatePixels();
  //dino.filter(GRAY);
  image(dino,540,0,dino.width,dino.height);
  println("done");
}
