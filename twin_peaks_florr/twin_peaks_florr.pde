PVector prop;
float lado;
float offy;
float tamanho;

void setup()
{
  size (900,900, P3D);
  background(255);
  noStroke();
  fill(0);
  
  lado = 180;
  prop = new PVector(lado, lado + lado/4);
  //offy = lado;
  tamanho = 100;
}

void draw()
{
  //push();
  //stroke(0);
  //noFill();
  //rect(0,0,prop.x,prop.y);
  //pop();
  
  for (int y = 0; y < tamanho; y++)
  {
    for (int x = 0; x < tamanho; x++)
    {
      if (x % 2 == 0) 
      {
        par(lado * x, lado * y);
      }
      else
      {
        impar(lado * x, lado * y);
      }
    }
  }
}

void impar(float x, float y)
{
  beginShape();
  vertex(x, y);
  vertex(x + prop.x, y + 2*(prop.y/3));
  vertex(x + prop.x, y + prop.y);
  vertex(x, y + prop.y/3);
  endShape(CLOSE);
}
void par(float x, float y)
{
  beginShape();
  vertex(x + prop.x, y);
  vertex(x + prop.x, y + prop.y/3);
  vertex(x, y + prop.y);
  vertex(x, y + 2*(prop.y/3));
  endShape(CLOSE);
}
