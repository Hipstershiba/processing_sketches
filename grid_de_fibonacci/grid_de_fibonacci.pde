float lado;
float mod;
float multi;
int cont;
int cont2;
int x,y,z;

void setup()
{
  size(900, 900);

  lado = width;  
  mod = 0;
  multi = 1;
  cont = 0;
  cont2 = 0;
  x = 1;
  y = 0;
  z = x + y;
}

void draw()
{
  bg();
  noFill();
  //noStroke();
  stroke(255);
  rectMode(CENTER);
  for (float linha = 0; linha < width/lado; linha++)
  {
    for (float coluna = 0; coluna < height/lado; coluna++)
    {
      //cont++;
      //if(cont2 % 2 == 0)
      //{
      //  if (cont % 2 == 0)
      //  {
      //    rect((lado/2) + lado + (lado * linha), (lado/2) + (lado * coluna), lado + mod, lado + mod);
      //  } 
      //  else 
      //  {
      //    rect((lado/2) + (lado * linha), (lado/2) + (lado * coluna), lado + mod, lado + mod);
      //  }
      //}
      //else
      //{
      //  if (cont % 2 == 0)
      //  {
      //    rect((lado/2) + (lado * linha), (lado/2) + (lado * coluna), lado + mod, lado + mod);
      //  } 
      //  else 
      //  {
      //    rect((lado/2) + lado + (lado * linha), (lado/2) + (lado * coluna), lado + mod, lado + mod);
      //  }
      //}
      rect((lado/2) + (lado * linha), (lado/2) + (lado * coluna), lado + mod, lado + mod);
    }
  }
  //mod += 2;
  //if(mod > lado/2)
  //{
  //  mod = 0;
  //  //cont2++;
  //}
  cont2++;
  if(cont2 % 120 == 0)
  {
    mod = 0;
    lado = width;
    lado = lado/z;
    println(z, " // ", width/lado);
    z = x + y;
    y = x;
    x = z;
  }
}

void bg() 
{
  push();
  rectMode(CORNER);
  noStroke();
  fill(0);
  rect(0, 0, width, height);
  pop();
}
