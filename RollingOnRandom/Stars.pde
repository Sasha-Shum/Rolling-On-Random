class Stars
{
  int x;
  int y;
  
  Stars(int xCoord, int yCoord)
  {
    x = xCoord;
    y = yCoord;
  }
  
  void displayStars()
  {
    strokeWeight(5);
    point(x,y);
  }
  

}
