//ellipse var
  float speedX = 0, speedY = 0, size = 25, speedXSign = 1, speedYSign = 1;

//fill var
  boolean fillOn = true;
  float fh = 900, fs = 900, fb = 900, fa = 900;

//stroke
  boolean strokeOn = true;
  float sh = 900, sf = 900, sb = 900, sa = 900, sw = 1;
  
//mode
  float drag = 0, circle, paint;
  
//barra
  boolean mouseRe = true;
  float barraX = 0;
  
//botões
  boolean mouseClick;
  
//circle
  float circleX = 360, circleY = 360;
  
//play
  boolean playOn = false;

//setup
  void setup(){
    size(960,720);
    colorMode(HSB);
    frameRate(120);
    background(0);
    }

//função barra
void funBarra() {
  if (mousePressed) {
    mouseRe = false;
  }
  if (mouseRe == false) {
    barraX = mouseX - 5;
    if (barraX > 782+118){
      barraX = 782+118;
    }
    if (barraX < 782){
      barraX = 782;
    }
  }
}

//draw
  void draw(){
    
    //interface
    
      //tela
        if (playOn == true) {
          noStroke();
          fill(0,drag);
          rect(40,40,640,640);
        }
        //objeto
          if (fillOn == true) {
            fill(map(fh,782,782+118,0,255),map(fs,782,782+118,0,255),map(fb,782,782+118,0,255), map(fa,782,782+118,0,255));
          } else {
            noFill();
          }
          if (strokeOn == true) {
            stroke(map(sh,782,782+118,0,255),map(sf,782,782+118,0,255),map(sb,782,782+118,0,255),map(sa,782,782+118,0,255));
            strokeWeight(sw);
          } else {
            noStroke();
          }
          ellipse(circleX,circleY,size,size);
          circleX += (speedX * int(playOn)) * speedXSign;
          circleY += (speedY * int(playOn)) * speedYSign;
          if(circleX > 680) {
            speedXSign = -1;
          }
          if(circleX < 40) {
            speedXSign = 1;
          }
          if(circleY > 680) {
            speedYSign = -1;
          }
          if(circleY < 40) {
            speedYSign = 1;
          }
        //borda
          noStroke();
          fill(175,25,25);
          rect(0,0,720,40);
          rect(0,40,40,680);
          rect(680,40,680,680);
          rect(0,680,720,40);
      //menu
        noStroke();
        fill(175,25,32);
        rect(720,0,240,720);
        //botões
          //desenho botão
            //play
              if (playOn == false) {
                noStroke();
                fill(175,25,25);
                rect(785,85,45,30);
                textSize(12);
                textAlign(CENTER);
                fill(70,153,138);
                text("play",807,104);
              } else {
                noStroke();
                fill(175,25,25);
                rect(785,85,45,30);
                textSize(12);
                textAlign(CENTER);
                fill(0,175,175);
                text("pause",807,104);
              }
            //reset
              noStroke();
              fill(175,25,25);
              rect(850,85,45,30);
              textSize(12);
              textAlign(CENTER);
              fill(30,255,175);
              text("Reset",873,104);
            //mode
              textSize(12);
              textAlign(CENTER);
              fill(175,15,80);
              text("MODE",840,150);
                //circle
                  noStroke();
                  fill(175,25,25);
                  rect(735,160,50,20);
                  textSize(12);
                  textAlign(CENTER);
                  fill(175,15,80);
                  text("Circle",760,174);
                //drag
                  //noStroke();
                  //fill(175,25,25);
                  //rect(735,190,50,20);
                  textSize(12);
                  textAlign(CENTER);
                  fill(175,15,80);
                  text("Drag",760,204);
                  //--
                    noStroke();
                    fill(175,25,25);
                    rect(805,190,20,20);
                    textSize(12);
                    textAlign(CENTER);
                    fill(175,15,80);
                    text("--",815,204);
                  //-
                    noStroke();
                    fill(175,25,25);
                    rect(830,190,20,20);
                    textSize(12);
                    textAlign(CENTER);
                    fill(175,15,80);
                    text("-",840,204);
                  //+
                    noStroke();
                    fill(175,25,25);
                    rect(855,190,20,20);
                    textSize(12);
                    textAlign(CENTER);
                    fill(175,15,80);
                    text("+",865,204);
                  //++
                    noStroke();
                    fill(175,25,25);
                    rect(880,190,20,20);
                    textSize(12);
                    textAlign(CENTER);
                    fill(175,15,80);
                    text("++",890,204);
                  //valor
                    noStroke();
                    fill(175,25,25);
                    rect(919,190,26,18);
                    textSize(12);
                    textAlign(RIGHT);
                    fill(175,15,80);
                    text(int(drag),945,204);
                //paint
                  noStroke();
                  fill(175,25,25);
                  rect(805,160,50,20);
                  textSize(12);
                  textAlign(CENTER);
                  fill(175,15,80);
                  text("Paint",830,174);
            //ellipse
              //title
              textSize(12);
              textAlign(CENTER);
              fill(175,15,80);
              text("ELLIPSE",840,250);
              //speedX
                textSize(12);
                textAlign(CENTER);
                fill(175,15,80);
                text("SpeedX",760,274);
                //--
                  noStroke();
                  fill(175,25,25);
                  rect(805,260,20,20);
                  textSize(12);
                  textAlign(CENTER);
                  fill(175,15,80);
                  text("--",815,274);
                //-
                  noStroke();
                  fill(175,25,25);
                  rect(830,260,20,20);
                  textSize(12);
                  textAlign(CENTER);
                  fill(175,15,80);
                  text("-",840,274);
                //+
                  noStroke();
                  fill(175,25,25);
                  rect(855,260,20,20);
                  textSize(12);
                  textAlign(CENTER);
                  fill(175,15,80);
                  text("+",865,274);
                //++
                  noStroke();
                  fill(175,25,25);
                  rect(880,260,20,20);
                  textSize(12);
                  textAlign(CENTER);
                  fill(175,15,80);
                  text("++",890,274);
                //valor
                  noStroke();
                  fill(175,25,25);
                  rect(919,261,26,18);
                  textSize(12);
                  textAlign(RIGHT);
                  fill(175,15,80);
                  text(int(speedX),945,274);
              //speedY
                textSize(12);
                textAlign(CENTER);
                fill(175,15,80);
                text("SpeedY",760,304);
                //--
                  noStroke();
                  fill(175,25,25);
                  rect(805,290,20,20);
                  textSize(12);
                  textAlign(CENTER);
                  fill(175,15,80);
                  text("--",815,304);
                //-
                  noStroke();
                  fill(175,25,25);
                  rect(830,290,20,20);
                  textSize(12);
                  textAlign(CENTER);
                  fill(175,15,80);
                  text("-",840,304);
                //+
                  noStroke();
                  fill(175,25,25);
                  rect(855,290,20,20);
                  textSize(12);
                  textAlign(CENTER);
                  fill(175,15,80);
                  text("+",865,304);
                //++
                  noStroke();
                  fill(175,25,25);
                  rect(880,290,20,20);
                  textSize(12);
                  textAlign(CENTER);
                  fill(175,15,80);
                  text("++",890,304);
                //valor
                  noStroke();
                  fill(175,25,25);
                  rect(919,291,26,18);
                  textSize(12);
                  textAlign(RIGHT);
                  fill(175,15,80);
                  text(int(speedY),945,304);
              //size
                textSize(12);
                textAlign(CENTER);
                fill(175,15,80);
                text("Size",760,334);
                //--
                  noStroke();
                  fill(175,25,25);
                  rect(805,320,20,20);
                  textSize(12);
                  textAlign(CENTER);
                  fill(175,15,80);
                  text("--",815,334);
                //-
                  noStroke();
                  fill(175,25,25);
                  rect(830,320,20,20);
                  textSize(12);
                  textAlign(CENTER);
                  fill(175,15,80);
                  text("-",840,334);
                //+
                  noStroke();
                  fill(175,25,25);
                  rect(855,320,20,20);
                  textSize(12);
                  textAlign(CENTER);
                  fill(175,15,80);
                  text("+",865,334);
                //++
                  noStroke();
                  fill(175,25,25);
                  rect(880,320,20,20);
                  textSize(12);
                  textAlign(CENTER);
                  fill(175,15,80);
                  text("++",890,334);
                //valor
                  noStroke();
                  fill(175,25,25);
                  rect(919,321,26,18);
                  textSize(12);
                  textAlign(RIGHT);
                  fill(175,15,80);
                  text(int(size),945,334);
            //fill
              //checkbox
              noStroke();
              fill(175,25,25);
              rect(735,360,15,15);
              //title
              textSize(12);
              textAlign(CENTER);
              fill(175,15,80);
              text("FILL",840,375);
              //hue
                textSize(12);
                textAlign(CENTER);
                fill(175,15,80);
                text("H",760,404);
                //barra
                  noStroke();
                  fill(175,25,25);
                  rect(782,396,128,8);
                //indicador
                  noStroke();
                  fill(175,15,80);
                  rect(fh,395,10,10);
                //valor
                  noStroke();
                  fill(175,25,25);
                  rect(919,391,26,18);
                  textSize(12);
                  textAlign(RIGHT);
                  fill(175,15,80);
                  text(int((map(fh,782,782+118,0,255))),945,404);
              //saturation
                textSize(12);
                textAlign(CENTER);
                fill(175,15,80);
                text("S",760,434);
                //barra
                  noStroke();
                  fill(175,25,25);
                  rect(782,426,128,8);
                //indicador
                  noStroke();
                  fill(175,15,80);
                  rect(fs,425,10,10);
                //valor
                  noStroke();
                  fill(175,25,25);
                  rect(919,421,26,18);
                  textSize(12);
                  textAlign(RIGHT);
                  fill(175,15,80);
                  text(int((map(fs,782,782+118,0,255))),945,434);
              //brightness
                textSize(12);
                textAlign(CENTER);
                fill(175,15,80);
                text("B",760,464);
                //barra
                  noStroke();
                  fill(175,25,25);
                  rect(782,456,128,8);
                //indicador
                  noStroke();
                  fill(175,15,80);
                  rect(fb,455,10,10);
                //valor
                  noStroke();
                  fill(175,25,25);
                  rect(919,451,26,18);
                  textSize(12);
                  textAlign(RIGHT);
                  fill(175,15,80);
                  text(int((map(fb,782,782+118,0,255))),945,464);
              //alpha
                textSize(12);
                textAlign(CENTER);
                fill(175,15,80);
                text("α",760,494);
                //barra
                  noStroke();
                  fill(175,25,25);
                  rect(782,486,128,8);
                //indicador
                  noStroke();
                  fill(175,15,80);
                  rect(fa,485,10,10);
                //valor
                  noStroke();
                  fill(175,25,25);
                  rect(919,481,26,18);
                  textSize(12);
                  textAlign(RIGHT);
                  fill(175,15,80);
                  text(int((map(fa,782,782+118,0,255))),945,494);
            //stroke
              //checkbox
              noStroke();
              fill(175,25,25);
              rect(735,520,15,15);
              //title
              textSize(12);
              textAlign(CENTER);
              fill(175,15,80);
              text("STROKE",840,535);
              //hue
                textSize(12);
                textAlign(CENTER);
                fill(175,15,80);
                text("H",760,564);
                //barra
                  noStroke();
                  fill(175,25,25);
                  rect(782,556,128,8);
                //indicador
                  noStroke();
                  fill(175,15,80);
                  rect(sh,555,10,10);
                //valor
                  noStroke();
                  fill(175,25,25);
                  rect(919,550,26,18);
                  textSize(12);
                  textAlign(RIGHT);
                  fill(175,15,80);
                  text(int((map(sh,782,782+118,0,255))),945,564);
              //saturation
                textSize(12);
                textAlign(CENTER);
                fill(175,15,80);
                text("S",760,594);
                //barra
                  noStroke();
                  fill(175,25,25);
                  rect(782,586,128,8);
                //indicador
                  noStroke();
                  fill(175,15,80);
                  rect(sf,585,10,10);
                //valor
                  noStroke();
                  fill(175,25,25);
                  rect(919,581,26,18);
                  textSize(12);
                  textAlign(RIGHT);
                  fill(175,15,80);
                  text(int((map(sf,782,782+118,0,255))),945,594);
              //brightness
                textSize(12);
                textAlign(CENTER);
                fill(175,15,80);
                text("B",760,624);
                //barra
                  noStroke();
                  fill(175,25,25);
                  rect(782,616,128,8);
                //indicador
                  noStroke();
                  fill(175,15,80);
                  rect(sb,615,10,10);
                //valor
                  noStroke();
                  fill(175,25,25);
                  rect(919,611,26,18);
                  textSize(12);
                  textAlign(RIGHT);
                  fill(175,15,80);
                  text(int((map(sb,782,782+118,0,255))),945,624);
              //alpha
                textSize(12);
                textAlign(CENTER);
                fill(175,15,80);
                text("α",760,654);
                //barra
                  noStroke();
                  fill(175,25,25);
                  rect(782,646,128,8);
                //indicador
                  noStroke();
                  fill(175,15,80);
                  rect(sa,645,10,10);
                //valor
                  noStroke();
                  fill(175,25,25);
                  rect(919,641,26,18);
                  textSize(12);
                  textAlign(RIGHT);
                  fill(175,15,80);
                  text(int((map(sa,782,782+118,0,255))),945,654);
              //weight
                textSize(12);
                textAlign(CENTER);
                fill(175,15,80);
                text("Weight",760,684);
                //--
                  noStroke();
                  fill(175,25,25);
                  rect(805,670,20,20);
                  textSize(12);
                  textAlign(CENTER);
                  fill(175,15,80);
                  text("--",815,684);
                //-
                  noStroke();
                  fill(175,25,25);
                  rect(830,670,20,20);
                  textSize(12);
                  textAlign(CENTER);
                  fill(175,15,80);
                  text("-",840,684);
                //+
                  noStroke();
                  fill(175,25,25);
                  rect(855,670,20,20);
                  textSize(12);
                  textAlign(CENTER);
                  fill(175,15,80);
                  text("+",865,684);
                //++
                  noStroke();
                  fill(175,25,25);
                  rect(880,670,20,20);
                  textSize(12);
                  textAlign(CENTER);
                  fill(175,15,80);
                  text("++",890,684);
                //valor
                  noStroke();
                  fill(175,25,25);
                  rect(919,671,26,18);
                  textSize(12);
                  textAlign(RIGHT);
                  fill(175,15,80);
                  text(int(sw),945,684);
            
        //lógica botão
        
          //fill barra
            //fill hue barra
              if((mouseX>=782) && (mouseX<=782+128) && (mouseY>395-10) && (mouseY<395+20)){
                barraX = fh;
                funBarra();
                fh = barraX;
                noStroke();
                fill(200);
                rect(fh,395.5,10,10);
              }
            //fill saturation barra
              if((mouseX>=782) && (mouseX<=782+128) && (mouseY>425-10) && (mouseY<425+20)){
                barraX = fs;
                funBarra();
                fs = barraX;
                noStroke();
                fill(200);
                rect(fs,425.5,10,10);
              }
              
            //fill brightness barra
              if((mouseX>=782) && (mouseX<=782+128) && (mouseY>455-10) && (mouseY<455+20)){
                barraX = fb;
                funBarra();
                fb = barraX;
                noStroke();
                fill(200);
                rect(fb,455.5,10,10);
              }
            //fill alpha barra
              if((mouseX>=782) && (mouseX<=782+128) && (mouseY>485-10) && (mouseY<485+20)){
                barraX = fa;
                funBarra();
                fa = barraX;
                noStroke();
                fill(200);
                rect(fa,485.5,10,10);
              }
        //stroke barra
          //stroke hue barra
              if((mouseX>=782) && (mouseX<=782+128) && (mouseY>555-10) && (mouseY<555+20)){
                barraX = sh;
                funBarra();
                sh = barraX;
                noStroke();
                fill(200);
                rect(sh,555.5,10,10);
              }
            //stroke saturation barra
              if((mouseX>=782) && (mouseX<=782+128) && (mouseY>585-10) && (mouseY<585+20)){
                barraX = sf;
                funBarra();
                sf = barraX;
                noStroke();
                fill(200);
                rect(sf,585.5,10,10);
              }
              
            //stroke brightness barra
              if((mouseX>=782) && (mouseX<=782+128) && (mouseY>615-10) && (mouseY<615+20)){
                barraX = sb;
                funBarra();
                sb = barraX;
                noStroke();
                fill(200);
                rect(sb,615.5,10,10);
              }
            //stroke alpha barra
              if((mouseX>=782) && (mouseX<=782+128) && (mouseY>645-10) && (mouseY<645+20)){
                barraX = sa;
                funBarra();
                sa = barraX;
                noStroke();
                fill(200);
                rect(sa,645.5,10,10);
              }
              
            //botões - e +
              //botões drag
                //drag --
                  if((mouseX>=805) && (mouseX<=805+20) && (mouseY>190) && (mouseY<190+20)){
                    strokeWeight(1);
                    stroke(200);
                    noFill();
                    rect(805,190,20,20);
                    textSize(12);
                    textAlign(CENTER);
                    fill(175,15,200);
                    text("--",815,204);
                    if (mouseClick == true && drag != 0) {
                      drag += - 5;
                    }
                    if (drag < 0) {
                      drag = 0;
                    }
                    mouseClick = false;
                  }
                //drag -
                  if((mouseX>=830) && (mouseX<=830+20) && (mouseY>190) && (mouseY<190+20)){
                    strokeWeight(1);
                    stroke(200);
                    noFill();
                    rect(830,190,20,20);
                    textSize(12);
                    textAlign(CENTER);
                    fill(175,15,200);
                    text("-",840,204);
                    if (mouseClick == true && drag != 0) {
                      drag += - 1;
                    }
                    if (drag < 0) {
                      drag = 0;
                    }
                    mouseClick = false;
                  }
                //drag +
                  if((mouseX>=855) && (mouseX<=855+20) && (mouseY>190) && (mouseY<190+20)){
                    strokeWeight(1);
                    stroke(200);
                    noFill();
                    rect(855,190,20,20);
                    textSize(12);
                    textAlign(CENTER);
                    fill(175,15,200);
                    text("+",865,204);
                    if (mouseClick == true && drag != 255) {
                      drag += + 1;
                    }
                    if (drag > 255) {
                      drag = 255;
                    }
                    mouseClick = false;
                  }
                //drag ++
                  if((mouseX>=880) && (mouseX<=880+20) && (mouseY>190) && (mouseY<190+20)){
                    strokeWeight(1);
                    stroke(200);
                    noFill();
                    rect(880,190,20,20);
                    textSize(12);
                    textAlign(CENTER);
                    fill(175,15,200);
                    text("++",890,204);
                    if (mouseClick == true && drag != 255) {
                      drag += + 5;
                    }
                    if (drag > 255) {
                      drag = 255;
                    }
                    mouseClick = false;
                  }
              
              //botões speed
                //speedX --
                  if((mouseX>=805) && (mouseX<=805+20) && (mouseY>260) && (mouseY<260+20)){
                    strokeWeight(1);
                    stroke(200);
                    noFill();
                    rect(805,260,20,20);
                    textSize(12);
                    textAlign(CENTER);
                    fill(175,15,200);
                    text("--",815,274);
                    if (mouseClick == true && speedX != 0) {
                      speedX += - 5;
                    }
                    if (speedX < 0) {
                      speedX = 0;
                    }
                    mouseClick = false;
                  }
                //speedX -
                  if((mouseX>=830) && (mouseX<=830+20) && (mouseY>260) && (mouseY<260+20)){
                    strokeWeight(1);
                    stroke(200);
                    noFill();
                    rect(830,260,20,20);
                    textSize(12);
                    textAlign(CENTER);
                    fill(175,15,200);
                    text("-",840,274);
                    if (mouseClick == true && speedX != 0) {
                      speedX += - 1;
                    }
                    if (speedX < 0) {
                      speedX = 0;
                    }
                    mouseClick = false;
                  }
                //speedX +
                  if((mouseX>=855) && (mouseX<=855+20) && (mouseY>260) && (mouseY<260+20)){
                    strokeWeight(1);
                    stroke(200);
                    noFill();
                    rect(855,260,20,20);
                    textSize(12);
                    textAlign(CENTER);
                    fill(175,15,200);
                    text("+",865,274);
                    if (mouseClick == true && speedX != 60) {
                      speedX += + 1;
                    }
                    if (speedX > 60) {
                      speedX = 60;
                    }
                    mouseClick = false;
                  }
                //speedX ++
                  if((mouseX>=880) && (mouseX<=880+20) && (mouseY>260) && (mouseY<260+20)){
                    strokeWeight(1);
                    stroke(200);
                    noFill();
                    rect(880,260,20,20);
                    textSize(12);
                    textAlign(CENTER);
                    fill(175,15,200);
                    text("++",890,274);
                    if (mouseClick == true && speedX != 60) {
                      speedX += + 5;
                    }
                    if (speedX > 60) {
                      speedX = 60;
                    }
                    mouseClick = false;
                  }
                //speedY --
                  if((mouseX>=805) && (mouseX<=805+20) && (mouseY>290) && (mouseY<290+20)){
                    strokeWeight(1);
                    stroke(200);
                    noFill();
                    rect(805,290,20,20);
                    textSize(12);
                    textAlign(CENTER);
                    fill(175,15,200);
                    text("--",815,304);
                    if (mouseClick == true && speedY != 0) {
                      speedY += - 5;
                    }
                    if (speedY < 0) {
                      speedY = 0;
                    }
                    mouseClick = false;
                  }
                //speedY -
                  if((mouseX>=830) && (mouseX<=830+20) && (mouseY>290) && (mouseY<290+20)){
                    strokeWeight(1);
                    stroke(200);
                    noFill();
                    rect(830,290,20,20);
                    textSize(12);
                    textAlign(CENTER);
                    fill(175,15,200);
                    text("-",840,304);
                    if (mouseClick == true && speedY != 0) {
                      speedY += - 1;
                    }
                    if (speedY < 0) {
                      speedY = 0;
                    }
                    mouseClick = false;
                  }
                //speedY +
                  if((mouseX>=855) && (mouseX<=855+20) && (mouseY>290) && (mouseY<290+20)){
                    strokeWeight(1);
                    stroke(200);
                    noFill();
                    rect(855,290,20,20);
                    textSize(12);
                    textAlign(CENTER);
                    fill(175,15,200);
                    text("+",865,304);
                    if (mouseClick == true && speedY != 60) {
                      speedY += + 1;
                    }
                    if (speedY > 60) {
                      speedY = 60;
                    }
                    mouseClick = false;
                  }
                //speedY ++
                  if((mouseX>=880) && (mouseX<=880+20) && (mouseY>290) && (mouseY<290+20)){
                    strokeWeight(1);
                    stroke(200);
                    noFill();
                    rect(880,290,20,20);
                    textSize(12);
                    textAlign(CENTER);
                    fill(175,15,200);
                    text("++",890,304);
                    if (mouseClick == true && speedY != 60) {
                      speedY += + 5;
                    }
                    if (speedY > 60) {
                      speedY = 60;
                    }
                    mouseClick = false;
                  }
                  
              //botões size
                //size --
                  if((mouseX>=805) && (mouseX<=805+20) && (mouseY>320) && (mouseY<320+20)){
                    strokeWeight(1);
                    stroke(200);
                    noFill();
                    rect(805,320,20,20);
                    textSize(12);
                    textAlign(CENTER);
                    fill(175,15,200);
                    text("--",815,334);
                    if (mouseClick == true && size != 0) {
                      size += - 5;
                    }
                    if (size < 0) {
                      size = 0;
                    }
                    mouseClick = false;
                  }
                //size -
                  if((mouseX>=830) && (mouseX<=830+20) && (mouseY>320) && (mouseY<320+20)){
                    strokeWeight(1);
                    stroke(200);
                    noFill();
                    rect(830,320,20,20);
                    textSize(12);
                    textAlign(CENTER);
                    fill(175,15,200);
                    text("-",840,334);
                    if (mouseClick == true && size != 0) {
                      size += - 1;
                    }
                    if (size < 0) {
                      size = 0;
                    }
                    mouseClick = false;
                  }
                //size +
                  if((mouseX>=855) && (mouseX<=855+20) && (mouseY>320) && (mouseY<320+20)){
                    strokeWeight(1);
                    stroke(200);
                    noFill();
                    rect(855,320,20,20);
                    textSize(12);
                    textAlign(CENTER);
                    fill(175,15,200);
                    text("+",865,334);
                    if (mouseClick == true && size != 640) {
                      size += + 1;
                    }
                    if (size > 640) {
                      size = 640;
                    }
                    mouseClick = false;
                  }
                //size ++
                  if((mouseX>=880) && (mouseX<=880+20) && (mouseY>320) && (mouseY<320+20)){
                    strokeWeight(1);
                    stroke(200);
                    noFill();
                    rect(880,320,20,20);
                    textSize(12);
                    textAlign(CENTER);
                    fill(175,15,200);
                    text("++",890,334);
                    if (mouseClick == true && size != 640) {
                      size += + 5;
                    }
                    if (size > 640) {
                      size = 640;
                    }
                    mouseClick = false;
                  }
                  
              //botões weight
                //weight --
                  if((mouseX>=805) && (mouseX<=805+20) && (mouseY>670) && (mouseY<670+20)){
                    strokeWeight(1);
                    stroke(200);
                    noFill();
                    rect(805,670,20,20);
                    textSize(12);
                    textAlign(CENTER);
                    fill(175,15,200);
                    text("--",815,684);
                    if (mouseClick == true && sw != 1) {
                      sw += - 5;
                    }
                    if (sw < 1) {
                      sw = 1;
                    }
                    mouseClick = false;
                  }
                //weight -
                  if((mouseX>=830) && (mouseX<=830+20) && (mouseY>670) && (mouseY<670+20)){
                    strokeWeight(1);
                    stroke(200);
                    noFill();
                    rect(830,670,20,20);
                    textSize(12);
                    textAlign(CENTER);
                    fill(175,15,200);
                    text("-",840,684);
                    if (mouseClick == true && sw != 1) {
                      sw += - 1;
                    }
                    if (sw < 1) {
                      sw = 1;
                    }
                    mouseClick = false;
                  }
                //weight +
                  if((mouseX>=855) && (mouseX<=855+20) && (mouseY>670) && (mouseY<670+20)){
                    strokeWeight(1);
                    stroke(200);
                    noFill();
                    rect(855,670,20,20);
                    textSize(12);
                    textAlign(CENTER);
                    fill(175,15,200);
                    text("+",865,684);
                    if (mouseClick == true && sw != 500) {
                      sw += + 1;
                    }
                    if (sw > 500) {
                      sw = 500;
                    }
                    mouseClick = false;
                  }
                //weight ++
                  if((mouseX>=880) && (mouseX<=880+20) && (mouseY>670) && (mouseY<670+20)){
                    strokeWeight(1);
                    stroke(200);
                    noFill();
                    rect(880,670,20,20);
                    textSize(12);
                    textAlign(CENTER);
                    fill(175,15,200);
                    text("++",890,684);
                    if (mouseClick == true && sw != 500) {
                      sw += + 5;
                    }
                    if (sw > 500) {
                      sw = 500;
                    }
                    mouseClick = false;
                  }
              //check boxes
                //fill
                  if((mouseX>=735) && (mouseX<=735+15) && (mouseY>360) && (mouseY<360+15)){
                    strokeWeight(1);
                    stroke(200);
                    noFill();
                    rect(735,360,15,15);
                    if (mouseClick == true){
                      if(fillOn == true){
                        fillOn = false;
                      } else {
                        fillOn = true;
                      }
                    }
                    mouseClick = false;
                  }
                  if(fillOn == true){
                    noStroke();
                    fill(200);
                    ellipse(735+8,360+8,10,10);
                  }
                //stroke
                  if((mouseX>=735) && (mouseX<=735+15) && (mouseY>520) && (mouseY<520+15)){
                    strokeWeight(1);
                    stroke(200);
                    noFill();
                    rect(735,520,15,15);
                    if (mouseClick == true){
                      if(strokeOn == true){
                        strokeOn = false;
                      } else {
                        strokeOn = true;
                      }
                    }
                    mouseClick = false;
                  }
                  if(strokeOn == true){
                    noStroke();
                    fill(200);
                    ellipse(735+8,520+8,10,10);
                  }
                  
              //botões mode
                //circle
                  if((mouseX>=735) && (mouseX<=735+50) && (mouseY>160) && (mouseY<160+20)){
                    strokeWeight(1);
                    stroke(200);
                    noFill();
                    rect(735,160,50,20);
                    textSize(12);
                    textAlign(CENTER);
                    fill(200);
                    text("Circle",760,174);
                    if(mouseClick == true) {
                      drag = 255;
                      mouseClick = false;
                    }
                  }
                //drag
                  //if((mouseX>=735) && (mouseX<=735+50) && (mouseY>190) && (mouseY<190+20)){
                  //  strokeWeight(1);
                  //  stroke(200);
                  //  noFill();
                  //  rect(735,190,50,20);
                  //  textSize(12);
                  //  textAlign(CENTER);
                  //  fill(200);
                  //  text("Drag",760,204);
                  //}
                //paint
                  if((mouseX>=805) && (mouseX<=805+50) && (mouseY>160) && (mouseY<160+20)){
                    strokeWeight(1);
                    stroke(200);
                    noFill();
                    rect(805,160,50,20);
                    textSize(12);
                    textAlign(CENTER);
                    fill(200);
                    text("Paint",830,174);
                    if(mouseClick == true) {
                      drag = 0;
                      mouseClick = false;
                    }
                  }
                // botões mode selecionado
                  if (drag == 0) {
                    textSize(12);
                    textAlign(CENTER);
                    fill(200);
                    text("Paint",830,174);
                  } else if (drag == 255) {
                    textSize(12);
                    textAlign(CENTER);
                    fill(200);
                    text("Circle",760,174);
                  } else {
                    textSize(12);
                    textAlign(CENTER);
                    fill(200);
                    text("Drag",760,204);
                  }
                  
              //botão play
                //play
                  if ((mouseX>=785) && (mouseX<=785+45) && (mouseY>85) && (mouseY<85+30)){
                    if (mouseClick == true) {
                      if (playOn == true) {
                        playOn = false;
                      } else {
                        playOn = true;
                      }
                      mouseClick = false;
                    }
                    noFill();
                    strokeWeight(1);
                    stroke(200);
                    rect(785,85,45,30);
                  }
                //reset
                  if((mouseX>=850) && (mouseX<=850+45) && (mouseY>85) && (mouseY<85+30)){
                    if (mouseClick == true){
                      fill(0);
                      rect(40,40,640,640);
                      circleX = 360;
                      circleY = 360;
                      mouseClick = false;
                    }
                    strokeWeight(1);
                    stroke(200);
                    noFill();
                    rect(850,85,45,30);
                  }
  }
  
//mouseReleased
void mouseReleased(){
  mouseRe = true;
}

void mouseClicked() {
  if (mouseClick == false){
    mouseClick = true;
  } else {
    mouseClick = false;
  }
}
