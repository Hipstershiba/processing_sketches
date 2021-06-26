class Dots {
  Dot[] dot = new Dot[81];
  int count;
  float angle;
  float offvel = 0;
  
  Dots() 
  {
    for(int i = 0; i < dot.length; i++)
    {
      dot[i] = new Dot(1, 1, 0.005*(i+1));
    }
  }
  
  void runDots (float alpha, float offang)
  {
    count = 0;
    for (int linha = 0; linha < 9; linha++)
    { 
      for (int coluna = 0; coluna < 9; coluna++)
      {
        push();
        translate((dot[count].orbitSpacing*2)*(coluna-4),(dot[count].orbitSpacing*2)*(linha-4));
        //dot[count].center();
        //dot[count].orbit(map(offs, 0, 3, 255, 0), map(offs, 0, 3, 0, 30));
        dot[count].orbit(alpha,offang);
        dot[count].rotation();
        pop();
          count++;
      }
    }
  }
  
  
}
