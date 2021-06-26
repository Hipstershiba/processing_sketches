//Dot[] dot = new Dot[81];
int count;
//float angle;
//float offvel = 0;

Dots[] dots = new Dots[10];

void setup() {
  size(900, 900);
  //fullScreen();
  //for(int i = 0; i < dot.length; i++) {
  //  dot[i] = new Dot(1, 1, 0.005*(i+1));
  //}
  
  for (int i = 0; i < dots.length; i++)
  {
    dots[i] = new Dots();
  }
  
}

void draw() {
  count = 0;
  background(255);
  //fill(255,50);
  //rect(0,0,width,height);
  push();
  translate(width/2,height/2);
  //for (int offs = 0; offs < 3; offs++)
  //{
    //for (int linha = 0; linha < 9; linha++)
    //{ 
    //  for (int coluna = 0; coluna < 9; coluna++)
    //  {
    //    push();
    //    translate((dot[count].orbitSpacing*2)*(coluna-4),(dot[count].orbitSpacing*2)*(linha-4));
    //    //dot[count].center();
    //    //dot[count].orbit(map(offs, 0, 3, 255, 0), map(offs, 0, 3, 0, 30));
    //    dot[count].orbit(255,180);
    //    dot[count].rotation();
    //    pop();
    //      count++;
    //  }
    //}
  //}
  
  for(int offs = 0; offs < dots.length; offs++)
  {
    if(offs > 0)
    {
      dots[offs].runDots(map(offs, 1, dots.length, 60, 0), map(offs, 0, dots.length, 1, 30));
    } 
    else
    {
      dots[0].runDots(255,0);
    }
    count++;
  }  
  pop();
  saveFrame("frames/frame_######.png");
}
