class Dice {
  float dice_length;

  Dice(float dice_length_value) {
    dice_length = dice_length_value;
  }

  // desenha o dado na tela
  void displayDice(int dice_value, float diceX, float diceY) {
    switch(dice_value) {
    case 1: 
      numb_one(diceX, diceY);
      break;
    case 2: 
      numb_two(diceX, diceY);
      break;
    case 3: 
      numb_three(diceX, diceY);
      break;
    case 4: 
      numb_four(diceX, diceY);
      break;
    case 5: 
      numb_five(diceX, diceY);
      break;
    case 6: 
      numb_six(diceX, diceY);
      break;
    }
  }

  // instruções pra desenhar cada face do dado
  void numb_one(float x, float y) {
    pg.noStroke();
    pg.fill(0);
    pg.rectMode(CENTER);
    pg.rect(x, y, dice_length, dice_length, dice_length / 10);
    pg.fill(255);
    pg.circle(x, y, dice_length / 5);
  }

  void numb_two(float x, float y) {
    pg.noStroke();
    pg.fill(0);
    pg.rectMode(CENTER);
    pg.rect(x, y, dice_length, dice_length, dice_length / 12);
    pg.fill(255);
    pg.circle(x + ((dice_length/10) * 2), y - ((dice_length/10) * 2), dice_length / 5);
    pg.circle(x - ((dice_length/10) * 2), y + ((dice_length/10) * 2), dice_length / 5);
  }

  void numb_three(float x, float y) {
    pg.noStroke();
    pg.fill(0);
    pg.rectMode(CENTER);
    pg.rect(x, y, dice_length, dice_length, dice_length / 10);
    pg.fill(255);
    pg.circle(x + ((dice_length/10) * 2.5), y - ((dice_length/10) * 2.5), dice_length / 5);
    pg.circle(x, y, dice_length / 5);
    pg.circle(x - ((dice_length/10) * 2.5), y + ((dice_length/10) * 2.5), dice_length / 5);
  }

  void numb_four(float x, float y) {
    pg.noStroke();
    pg.fill(0);
    pg.rectMode(CENTER);
    pg.rect(x, y, dice_length, dice_length, dice_length / 10);
    pg.fill(255);
    pg.circle(x - ((dice_length/10) * 2.5), y - ((dice_length/10) * 2.5), dice_length / 5);
    pg.circle(x + ((dice_length/10) * 2.5), y - ((dice_length/10) * 2.5), dice_length / 5);
    pg.circle(x - ((dice_length/10) * 2.5), y + ((dice_length/10) * 2.5), dice_length / 5);
    pg.circle(x + ((dice_length/10) * 2.5), y + ((dice_length/10) * 2.5), dice_length / 5);
  }

  void numb_five(float x, float y) {
    pg.noStroke();
    pg.fill(0);
    pg.rectMode(CENTER);
    pg.rect(x, y, dice_length, dice_length, dice_length / 10);
    pg.fill(255);
    pg.circle(x - ((dice_length/10) * 2.5), y - ((dice_length/10) * 2.5), dice_length / 5);
    pg.circle(x + ((dice_length/10) * 2.5), y - ((dice_length/10) * 2.5), dice_length / 5);
    pg.circle(x, y, dice_length / 5);
    pg.circle(x - ((dice_length/10) * 2.5), y + ((dice_length/10) * 2.5), dice_length / 5);
    pg.circle(x + ((dice_length/10) * 2.5), y + ((dice_length/10) * 2.5), dice_length / 5);
  }

  void numb_six(float x, float y) {
    pg.noStroke();
    pg.fill(0);
    pg.rectMode(CENTER);
    pg.rect(x, y, dice_length, dice_length, dice_length / 10);
    pg.fill(255);
    pg.circle(x - ((dice_length/10) * 2), y - ((dice_length/10) * 3), dice_length / 5);
    pg.circle(x + ((dice_length/10) * 2), y - ((dice_length/10) * 3), dice_length / 5);
    pg.circle(x - ((dice_length/10) * 2), y, dice_length / 5);
    pg.circle(x + ((dice_length/10) * 2), y, dice_length / 5);
    pg.circle(x - ((dice_length/10) * 2), y + ((dice_length/10) * 3), dice_length / 5);
    pg.circle(x + ((dice_length/10) * 2), y + ((dice_length/10) * 3), dice_length / 5);
  }
}
