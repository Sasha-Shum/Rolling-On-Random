float waterTimeY = 0.0; // Time for Water
float mountTimeY = 10000.0; // Time For Mount
UFO ufo1; // UFO
float timeForUFOLight = 0; // Randomly Change Colors for UFO

//Clouds cloud; // Cloud
ArrayList<Clouds> manyClouds;
int randomNumberOfClouds;
Luminary sun,moon;

int randomNumberOfStars;
ArrayList<Stars> stars;

boolean FadeInOut = false;
int alphaStar;
void setup()
{
  size(1200,720,P2D);
  ufo1 = new UFO(width/2, height/2); 
  sun = new Luminary(1100,100);
  moon = new Luminary(1100, 200);
  //cloud = new Clouds();
  manyClouds = new ArrayList<Clouds>();
  alphaStar = 0;
  randomNumberOfClouds = (int)random(4); 

  randomNumberOfStars= (int)random(100,150);
  stars = new ArrayList<Stars>();
  for(int i = 0; i <= randomNumberOfClouds; i++)
  {
    Clouds cloud = new Clouds();
    manyClouds.add(cloud);
  }
  
   for(int i = 0; i < randomNumberOfStars;i++)
 {
   int xCo = (int)random(0,1200);
   int yCo = (int)random(0,500);
   Stars star = new Stars(xCo,yCo);
   stars.add(star);
 }
 
  smooth();
noStroke();

}

void draw()
{
  background(178,249,255);


 
  // SUN //
 sun.SunDownAndUp();
 if(sun.y >= 350)
{ 
  
  alphaStar++;
  if(alphaStar > 200)
  {
    alphaStar = 200;
  }

}
if(sun.y < 350)
{
  if(alphaStar <= -150)
  {
    alphaStar = -100;
  }
  alphaStar--;  
}

if(sun.y <= 100)
{
  alphaStar = 0;
}

  stroke(255,255,255, alphaStar);
  for(int i = 0; i < stars.size(); i++)
  {
    stars.get(i).displayStars();
  }




noStroke();
 sun.Sun();




  // -------------------MOUNTAIN -------------------//
   fill(255); // Fill with Grey
  beginShape();
 float xCoordOff = mountTimeY;
  
  for(float i = 0; i < width; i++)
  {
    float n = noise(xCoordOff);
    float yCoord = map(n,0,1,0,550);
    xCoordOff += 0.01;
    vertex(i,yCoord);
  }
  
  mountTimeY += 0.01;
  vertex(width,height);
  vertex(0,height);
  endShape(CLOSE);
 // END MOUNTAIN//
  
    /////////////////////////////
   fill(200,200,206); // Fill with Grey
  beginShape();
 float xCoordOff1 = mountTimeY;
  
  for(float i = 0; i < width; i++)
  {
    float n = noise(xCoordOff1);
    float yCoord = map(n,0,1,0,600);
    xCoordOff1 += 0.01;
    vertex(i,yCoord);
  }
  
  mountTimeY += 0.01;
  vertex(width,height);
  vertex(0,height);
  endShape(CLOSE);


  
  //UFO PART 
  timeForUFOLight = 0.009;
  ufo1.DrawUFO(timeForUFOLight);
  //END OF UFO PART
 
  //Clouds
  fill(255);
  
  for(int q = 0; q < manyClouds.size(); q++)
  {
    manyClouds.get(q).displayCloud();
    manyClouds.get(q).moveCloud();
  }
  
 // -------------------WATER -------------------//
  fill(103, 187, 237); // Fill with blue

   beginShape();
    float waterTimeX = 0;
    
    for (float x = 0; x <= width; x +=10)
    {
      float y = map(noise(waterTimeX, waterTimeY), 0, 1, 600, 720); // Get Y Value
      vertex(x, y);
      waterTimeX +=0.06;
    }
    waterTimeY += 0.009;
    vertex(width, height);
    vertex(0, height);
    endShape(CLOSE);
 //END WATER //

}
