Dice[] D;
int diceNum = 1;
float diceSize = 10;

void setup() {
  //size(900, 900);
  fullScreen();
  background(255);
  frameRate(60);

  D = new Dice[int((width/diceSize) * (height/diceSize))];

  for (int i = 0; i < D.length; i++) {
    D[i] = new Dice(diceSize);
  }
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

// desenha os dados em ordem crescente na tela
  for (int h = 0; h < height/diceSize; h++) {
    for (int w = 0; w < width/diceSize; w ++) {

      diceNum ++;
      if (diceNum > 6) {
        diceNum = 1;
      }

      D[w+h].displayDice(diceNum, (diceSize*w) + (diceSize/2), (diceSize*h) + (diceSize/2));
    }
  }

  //if (frameCount%30 == 0) {
  //  diceNum++;
  //}

  //if (diceNum > 6) {
  //  diceNum = 1;
  //}
}

// background com alpha
void bg() {
  pushMatrix();
  rectMode(CORNER);
  noStroke();
  fill(255,2);
  rect(0, 0, width, height);
  popMatrix();
}
