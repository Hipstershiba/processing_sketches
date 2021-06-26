float aces;
float cards;
float rows;
float result;

void setup(){
  aces = 4;
  cards = 52;
  rows = 2;
  result = 100;
  for(int i = 0; i < rows; i++) {
    result *= (aces-i)/(cards-i);
  }
  println(result,"%"); 
}
