float raio;
int x;
float t;
float[] ruido;

void setup() {
  size(900,900,P3D);
  
  raio = 250;
  x = 0;
  t = 0;
  ruido = new float[360];
  
  for(int i = 0; i < 360; i++) {
    ruido[i] = map(sin(noise(t)), 0, 1, -50, 100);
    t += 0.02;
    //println(ruido[i]);
  }
  
}

void draw() {
  background(0);
  translate(width/2,height/2);
  
  noStroke();
  fill(255);
  for (int i = 0; i < 360; i++) {
    circle((raio+ruido[i]) * cos(radians(i)), (raio+ruido[i]) * sin(radians(i)), 5);
  }
  
  //t += 0.01;
 
}
