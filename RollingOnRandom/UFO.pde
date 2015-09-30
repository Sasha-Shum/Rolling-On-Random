class UFO
{
    int xCoord,yCoord;
    float time;
    UFO(int x_, int y_)
    {
      xCoord = x_;
      yCoord = y_;
      time = 0.0;

    }
    
    
    void DrawUFO(float t)
    {
      noStroke();

      fill(255,0,0);
      ellipse(xCoord,yCoord - 30, 120, 80);
      fill(110,97,240);
      ellipse(xCoord,yCoord, 250,70);
      stroke(255);
      strokeWeight(10);
      line(xCoord - 121, yCoord, xCoord + 121, yCoord);
       strokeWeight(0);
      

      for(int i = 0; i < 25; i++)
      {
         fill(random(255),random(255),random(255));
        ellipse(xCoord - 120 + i * 10, yCoord, 10,10);
      }
      stroke(0);
      strokeWeight(2);
     
     time +=0.01; 
      float n = noise(time);
      float xCoord1 = map(n,0,1,xCoord - 50, xCoord+50);
     line(xCoord,yCoord - 70, xCoord1,yCoord-130);
     ellipse(xCoord1,yCoord-130,10,10);
     noStroke();
     
      
    }
    
  
    

    
}
