boolean mouseRe = true;
float fh=300, fs=300, barraX = 300;

void setup() {
  size(800,600);
}

void funBarra() {
  if (mousePressed) {
    mouseRe = false;
  }
  if (mouseRe == false) {
    barraX = mouseX - 5;
    if (barraX > width/2+90){
      barraX = width/2+90;
    }
    if (barraX < width/2-100){
      barraX = width/2-100;
    }
  }
}

void draw() {
  //bg
  background(255);
  
  //barra 1
  noStroke();
  fill(0);
  rect(width/2-100, height/2-50,200,5);
  
  noStroke();
  fill(125);
  rect(fh,height/2-52.5,10,10);
  
  textSize(12);
  textAlign(RIGHT);
  fill(0);
  text(int(fh), width/2+135, height/2-43);
  
  if((mouseX>= width/2-100) && (mouseX<=width/2+100) && (mouseY>height/2-60) && (mouseY<height/2-40)){
    barraX = fh;
    funBarra();
    fh = barraX;
    noStroke();
    fill(175);
    rect(fh,height/2-52.5,10,10);
  }
  
  //barra 2
  noStroke();
  fill(0);
  rect(width/2-100, height/2+50,200,5);
  
  noStroke();
  fill(125);
  rect(fs,height/2+47.5,10,10);
  
  textSize(12);
  textAlign(RIGHT);
  fill(0);
  text(int(map(fs,width/2-100,width/2+90,0,255)), width/2+135, height/2+57);
  
  if((mouseX>= width/2-100) && (mouseX<=width/2+100) && (mouseY>height/2+42.5) && (mouseY<height/2+62.5)){
    barraX = fs;
    funBarra();
    fs = barraX;
    noStroke();
    fill(175);
    rect(fs,height/2+47.5,10,10);
  }
  println(barraX, fs, fh);
  
}

void mouseReleased(){
  mouseRe = true;
}
