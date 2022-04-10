//Global Variables
float rectApronX, rectApronY, rectApronWidth, rectApronHeight;
PImage Pic1;
int Pic1Width=960;
int Pic1Height=640;
//int Pic1WidthAdjusted=;
//int Pic1HeightAdjusted=;
int largerPic1Dimension, smallerPic1Dimension;
Boolean widthPic1Larger= false, heightPic1Larger=false;

//APRON strings
float stringLeftX, stringLeftY, stringLeftWidth, stringLeftHeight;
float  stringMidX, stringMidY, stringMidWidth, stringMidHeight; 
float stringRightX, stringRightY, stringRightWidth, stringRightHeight;
float lilhandLeftX1, lilhandLeftY1, lilhandLeftX2, lilhandLeftY2;
float lilhandRightX1, lilhandRightY1, lilhandRightX2, lilhandRightY2;
//APRON border
color italianFlagGreen=#2F9739; 
color italianFlagRed= #D63A31;
float circleApronDiameter;
float circle1AX, circle1AY, circle1BX, circle1BY, circle1CX, circle1CY;
float circle2AX, circle2AY, circle2BX, circle2BY, circle2CX, circle2CY; 
float circle2DX, circle2DY, circle2EX, circle2EY, circle2FX, circle2FY;
float circle2GX, circle2GY, circle2HX, circle2HY;
float circle3AX, circle3AY, circle3BX, circle3BY, circle3CX, circle3CY;
float circle4AX, circle4AY;
String title = " I love you from my head to-ma-toes I love you from my head to-ma-toes I love you from my head to-ma-toes I love you from my head to-ma-toes I love you from my head to-ma-toes I love you from my head to-ma-toes I love you from my head to-ma-toes I love you from my head to-ma-toes I love you from my head to-ma-toes I love you from my head to-ma-toes I love you from my head to-ma-toes I love you from my head to-ma-toes I love you from my head to-ma-toes I love you from my head to-ma-toes I love you from my head to-ma-toes I love you from my head to-ma-toes";
PFont titleFont;
//

void Apron()
{
noStroke();
  rect(rectApronX, rectApronY, rectApronWidth, rectApronHeight);
  image(Pic1, rectApronX, rectApronY, rectApronWidth, rectApronHeight);

  fill(black); 
  textAlign(CENTER, TOP); 
  textFont(titleFont, 10); //Change the number until it fits
  text(title, rectApronX, rectApronY, rectApronWidth, rectApronHeight);
  fill(italianFlagGreen);
  rect(stringLeftX, stringLeftY, stringLeftWidth, stringLeftHeight);
  ellipse(circle1AX, circle1AY, circleApronDiameter, circleApronDiameter);
  ellipse(circle1BX, circle1BY, circleApronDiameter, circleApronDiameter);
  ellipse(circle1CX, circle1CY, circleApronDiameter, circleApronDiameter); 
  ellipse(circle2AX, circle2AY, circleApronDiameter, circleApronDiameter);
  fill(white);
  rect(stringMidX, stringMidY, stringMidWidth, stringMidHeight);
  ellipse(circle2BX, circle2BY, circleApronDiameter, circleApronDiameter);
  ellipse(circle2CX, circle2CY, circleApronDiameter, circleApronDiameter);
  ellipse(circle2DX, circle2DY, circleApronDiameter, circleApronDiameter);
  ellipse( circle2EX, circle2EY, circleApronDiameter, circleApronDiameter);
  ellipse(circle2FX, circle2FY, circleApronDiameter, circleApronDiameter);
  ellipse(circle2GX, circle2GY, circleApronDiameter, circleApronDiameter);
  ellipse(circle2HX, circle2HY, circleApronDiameter, circleApronDiameter);
  fill(italianFlagRed);
  rect(stringRightX, stringRightY, stringRightWidth, stringRightHeight);
  ellipse(circle3AX, circle3AY, circleApronDiameter, circleApronDiameter); 
  ellipse(circle3BX, circle3BY, circleApronDiameter, circleApronDiameter);
  ellipse(circle3CX, circle3CY, circleApronDiameter, circleApronDiameter);
  ellipse(circle4AX, circle4AY, circleApronDiameter, circleApronDiameter);
}//End Apron
