PImage img;
PImage newImg;

void setup() {
  //size(1080,1350);
  size(540,675);
  img = loadImage("camisa-dinossauro-2.jpg");
  println(img.width,img.height);
  newImg = createImage(img.width,img.height, RGB);
  //frameRate (5);
}

void draw() {
  newImg.loadPixels();
  img.loadPixels();
  for (int y = 0; y < 1350; y++) {
    for (int x = 0; x < 1080; x++) {
      int loc = x+y*1080;
      //float bri = brightness(img.pixels[loc]);
      //if (bri > map(mouseX,0,width,0,255)) {
      //  pixels[loc] = color(255);
      //} else {
      // pixels[loc] = color(0); 
      //}
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      //float d = dist(mouseX,mouseY,x,y);
      //float factor = map(d, 0, 200, 2, 0);
      newImg.pixels[loc] = color(r,g,b);
    }
  }
  float n = mouseX+mouseY;
  float factor = map(n,0,width*height,0,0.5);
  println(n);
  image (newImg,0,0,img.width*factor,img.height*factor);
}
