class Complex {
  
  float x;
  float y;
  
  Complex(float a, float b) {
    x = a;
    y = b;
  }
  
  Complex cAdd(Complex a) {
    return(new Complex(a.x + x, a.y + y));
  }
  
  Complex cSq(){
    return(new Complex((x*x)-(y*y),2*(x*y)));
  }
  
}
