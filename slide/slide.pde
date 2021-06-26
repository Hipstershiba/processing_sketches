float n = 0, c = 125;
float x;
float y;
boolean released;
float value;

void setup(){
 size(800,600);
 x = width/2-100+n;
 y = height/2-5;
}

void draw(){
  //tela
  background(255);
  
  //barra
  noStroke();
  fill(0);
  rect(width/2-100,height/2-2.5,200,5);
  
  //indicador
  noStroke();
  fill(c);
  rect(x,y,10,10); 
  
  //valor
  textSize(12);
  textAlign(CENTER);
  fill(0);
  text(int(value), width/2+120, height/2+4);

  if((mouseX>= 290) && (mouseX<=510) && (mouseY>y-10) && (mouseY<y+20)){
    if(mousePressed){
      released = true;
      if((x >= width/2-100) && (x <= width/2+90)){
      println(3,  "  //   x:", x, "  //   width/2-100:", width/2-100, "  //   width/2-290:", width/2+90, "  //   mousePressed:", mousePressed);
      c = 200;
    } else {
        println(2, "  //   x:", x, "  //   width/2-100:", width/2-100, "  //   width/2-290:", width/2+90, "  //   mousePressed:", mousePressed);
        c = 200;
      }
    } else {
        println(1, "  //   x:", x, "  //   width/2-100:", width/2-100, "  //   width/2-290:", width/2+90, "  //   mousePressed:", mousePressed);
        c = 175;
        n = 0;
      }
  } else {
      println(0, "  //   x:", x, "  //   width/2-100:", width/2-100, "  //   width/2-290:", width/2+290, "  //   mousePressed:", mousePressed);
      c = 125;
    }
    if(released == true){
      x = mouseX - 5;
      println(4,  "  //   x:", x, "  //   width/2-100:", width/2-100, "  //   width/2-290:", width/2+90, "  //   mousePressed:", mousePressed);
      if(x > 490){
        x = 490;
      }
      if(x < 300){
        x = 300;
      }
    }
    value = map(x,300,490,0,255);
}

void mouseReleased(){
  released = false;
}
//x >= width/2-100 && x <=width/2-290
