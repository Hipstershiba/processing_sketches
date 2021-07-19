Dice[][] D;
int diceNum = 1;
float diceSize = 12;

String fileName;
PImage sourceImg;
color pixelColor;
int[][] pixelValue;
int pixelNum;

PGraphics pg;
String renderName;

boolean saved = false;

PrintWriter output;

void setup() {
  size(900, 900);
  //fullScreen();
  background(255);
  frameRate(60);
  colorMode(HSB, 255);
  
  //debeug txt
  output = createWriter("image_debug.txt");

  //converte imagem em valores de 1 a 6
  fileName = "photo_2021-07-17_01-12-41.jpg";
  sourceImg = loadImage(fileName);
  //sourceImg.resize(sourceImg.width/2, sourceImg.height/2);
  sourceImg.resize(0,90);
  pixelNum = sourceImg.width * sourceImg.height;
  pixelValue = new int[sourceImg.height][sourceImg.width];
  D = new Dice[sourceImg.height][sourceImg.width];
  for (int imgy = 0; imgy < sourceImg.height; imgy++) {
    for (int imgx = 0; imgx < sourceImg.width; imgx++) {
      pixelColor = sourceImg.get(imgx, imgy);
      pixelValue[imgy][imgx] = int(map(brightness(pixelColor), 0, 255, 1, 6));
      D[imgy][imgx] = new Dice(diceSize);
      output.println("array position:" + imgx + ", " + imgy + " // pixelValue:" + pixelValue[imgy][imgx] + " //pixelColor:" + pixelColor);
    }
  }

  for (int imgy = 0; imgy < sourceImg.height; imgy++) {
    for (int imgx = 0; imgx < sourceImg.width; imgx++) {
      //println (pixelValue[imgy][imgx]);
    }
  }

  //salva imagem
  pg = createGraphics(int(sourceImg.width * diceSize), int(sourceImg.height * diceSize));
  //renderName = new String ("render/", fileName, "jpg");

  //conclui setup 
  println("setup done");
}

void draw() {
  bg(); 

  // desenha os dados com valores aleatorios
  //for (int h = 0; h < height/diceSize; h++) {
  //  for (int w = 0; w < width/diceSize; w ++) {

  //    diceNum = int(random(1, 7));

  //    D[w+h].displayDice(diceNum, (diceSize*w) + (diceSize/2), (diceSize*h) + (diceSize/2));
  //  }
  //}

  //desenha os dados em ordem crescente na tela
  //for (int h = 0; h < height/diceSize; h++) {
  //  for (int w = 0; w < width/diceSize; w ++) {

  //    diceNum ++;
  //    if (diceNum > 6) {
  //      diceNum = 1;
  //    }

  //    D[w+h].displayDice(diceNum, (diceSize*w) + (diceSize/2), (diceSize*h) + (diceSize/2));
  //  }
  //}

  //imagem de teste
  //image(sourceImg, 0, 0, 150*4, 200*4); 

  //renderiza a imagem
  pg.beginDraw();
  for (int imgy = 0; imgy < sourceImg.height; imgy++) {
    for (int imgx = 0; imgx < sourceImg.width; imgx++) {
      D[imgy][imgx].displayDice(pixelValue[imgy][imgx], (diceSize*imgx) + (diceSize/2), (diceSize*imgy) + (diceSize/2));
    }
  }
  pg.endDraw();

  for (int imgy = 0; imgy < sourceImg.height; imgy++) {
    for (int imgx = 0; imgx < sourceImg.width; imgx++) {
      pixelColor = sourceImg.get(imgx, imgy);
      //pixelValue[imgx+imgy] = brightness(pixelColor);
      fill(int(brightness(pixelColor)));
      rect(imgx*10, imgy*10, 10,10);
    }
  }

  //if (frameCount%30 == 0) {
  //  diceNum++;
  //}

  //if (diceNum > 6) {
  //  diceNum = 1;
  //}

  saveImg();
}

// background com alpha
void bg() {
  pushMatrix(); 
  rectMode(CORNER); 
  noStroke(); 
  fill(255, 2); 
  rect(0, 0, width, height); 
  popMatrix();
}

void saveImg() {
  if (saved == false) {
    pg.save("render/thomas_dice.jpg");
    output.flush();
    output.close();
    saved = true;
    println("Image saved");
  }
}
