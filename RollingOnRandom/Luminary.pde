class Luminary
{
  int x, y;
  PShape sun;
  boolean switchSide;
  int time;
  int wait;
  Luminary(int xCoord, int yCoord)
  {
    x = xCoord;
    y = yCoord;
    switchSide = false;
    wait = 25000;
    time = millis();
  }
  
  void Sun()
  {
   fill(250,255,10);
    ellipse(x,y,100,100);
  }
  
  void SunDownAndUp()
  {
    fill(250,255,10);
    if(y <= 100)
    {
       if(millis() - time >= wait)
       {
          switchSide = false;   
           time = millis();  
       }
       else
       {
         y = 100;
       }
      
    }
    else if(y >= 600)
    {
      switchSide = true;
    }

    if(switchSide == false)
     {
       y++;
     }
     if(switchSide == true)
     {
       y--;
     
     }
   

      int backgroundChange = y;
     background(178-(backgroundChange/3),249-(backgroundChange/3),255-(backgroundChange/3));
      

  }
  


}
