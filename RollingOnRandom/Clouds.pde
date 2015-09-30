class Clouds{
  int x;
  int y;
  PShape group;
  PShape partOne,partTwo, partThree, partFour,partFive, partSix, partSeven, partEight,partNine;
  int speed;
 Clouds()
  {
    int randY = (int)random(300); 
    x = (int)random(1200,1400);
    y = randY;
      speed = (int)random(2,6);
  }
  
  
  void displayCloud()
  {
    
    group = createShape(GROUP);
    partOne = createShape(ELLIPSE,x,y - 10, 50,30);
    partTwo = createShape(ELLIPSE,x-20, y, 50,30);
    partThree = createShape(ELLIPSE,x + 40, y- 10, 50,30);
    partFour = createShape(ELLIPSE,x + 70, y - 10, 50,30);
    partFive = createShape(ELLIPSE,x + 100, y, 50,30);
    partSix = createShape(ELLIPSE,x+70, y, 50,40);
    partSeven = createShape(ELLIPSE,x, y, 50,40);
    partEight = createShape(ELLIPSE,x + 40, y, 50, 40);
    partNine = createShape(ELLIPSE,x,y,150,30);
    

    group.addChild(partOne);
    group.addChild(partTwo);
    group.addChild(partThree);
    group.addChild(partFour);
    group.addChild(partFive);
    group.addChild(partSix);
    group.addChild(partSeven);
    group.addChild(partEight);
    group.addChild(partNine);
 

    shape(group);
  

  }
  
  void moveCloud()
  {
  
    x -= speed;
    if(x < -200)
    {
      x = (int)random(1200,1400);
      y = (int)random(300);
      speed = (int)random(2,6);
    }
    
  }


}
