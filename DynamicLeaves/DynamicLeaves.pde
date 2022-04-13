//Global Variables, variable that runs in the ain program and all the sub programs
int reset, smallerDisplayDimension, mouthOpen; 
int appDisplayWidth, appDisplayHeight;
int boldLine;
color tomatoRed=#EA1C1C;
color white=#FFFFFF;
color black=#000000;
color green=#266C0F;
color italianFlagGreen=#2F9739; 
color italianFlagRed= #BF2328;
color darkGreen=#1A5A17;
color buttonColor;
float leftquitButtonX, leftquitButtonY, leftquitButtonWidth, leftquitButtonHeight;
float rightquitButtonX, rightquitButtonY, rightquitButtonWidth, rightquitButtonHeight;
float FIRSTbabyLeafX1, FIRSTbabyLeafY1, FIRSTbabyLeafX2, FIRSTbabyLeafY2;
float SECONDbabyLeafX1, SECONDbabyLeafY1, SECONDbabyLeafX2, SECONDbabyLeafY2;
float THIRDbabyLeafX1, THIRDbabyLeafY1, THIRDbabyLeafX2, THIRDbabyLeafY2;

/*
float babyLeftEyeX, babyLeftEyeY, babyLeftEyeWidth, babyLeftEyeHeight;
 float babyRightEyeX, babyRightEyeY, babyRightEyeWidth, babyRightEyeHeight;
 float smileCirleX, smileCircleY, smileCircleWidth, smileCircleHeight;
 float smileLineX1, smileLineY1, smileLineX2, smileLineY2;
 float beautyMark1X; 
 */
//
void setup ()
{

  fullScreen (); //it is a question dont put in numbers 
  //NEEDS TO BE IN VOID SETUP
  //Landscape should be landscape not portrait


  //
  DisplayGeometryDisplayOrientation ();
  DeterminingLargerDimension();
  //
  population();
  // int canvasCenter = displayWidth*1/2;

  leftquitButtonX=displayWidth*1/12;
  leftquitButtonY=smallerDisplayDimension*1/4;
  leftquitButtonWidth=eyeDiameter*35/20;
  leftquitButtonHeight=eyeDiameter*2;
  ;

  rightquitButtonX= displayWidth*1/8;
  rightquitButtonY=leftquitButtonY;
  rightquitButtonWidth=leftquitButtonWidth;
  rightquitButtonHeight= leftquitButtonHeight;

  FIRSTbabyLeafX1=leftquitButtonX+(leftquitButtonWidth*30/100);
  FIRSTbabyLeafY1=leftquitButtonY-(leftquitButtonHeight*30/100);
  FIRSTbabyLeafX2=displayWidth*1/13;
  FIRSTbabyLeafY2=smallerDisplayDimension*1/6;

  SECONDbabyLeafX1= FIRSTbabyLeafX1;
  SECONDbabyLeafY1=FIRSTbabyLeafY1;
  SECONDbabyLeafX2=displayWidth*1/10;
  SECONDbabyLeafY2=FIRSTbabyLeafY2;

  THIRDbabyLeafX1=FIRSTbabyLeafX1;
  THIRDbabyLeafY1=FIRSTbabyLeafY1;
  THIRDbabyLeafX2=displayWidth*1/8;
  THIRDbabyLeafY2=FIRSTbabyLeafY2;







  /* 
   quitButtonX=displayWidth*1/10;
   quitButtonY=smallerDisplayDimension*1/4;
   quitButtonWidth=eyeDiameter*2;
   quitButtonHeight=eyeDiameter*2;
   
   leftButtCheekX=quitButtonX-(quitButtonWidth*1/6);
   leftButtCheekY=quitButtonY+(quitButtonHeight*1/3);
   leftButtCheekWidth=quitButtonWidth*1/8;
   leftButtCheekHeight=quitButtonHeight*1/8;
   rightButtCheekX=quitButtonX+(quitButtonWidth*1/6); 
   rightButtCheekY=leftButtCheekY;
   rightButtCheekWidth=leftButtCheekWidth;
   rightButtCheekHeight=leftButtCheekHeight;
   
   buttLineX1=leftButtCheekX-(leftButtCheekWidth*1/2);
   buttLineY1=leftButtCheekY-(leftButtCheekHeight*1/2);
   buttlineX2=rightButtCheekX+(rightButtCheekWidth*1/2);
   buttlineY2=buttLineY1;
   */


  Face ();
  Mouth ();
  Eyes ();
  Blush();
  Apron();
  Hands();




  //String[] fontList = PFont.list(); //To list all fonts available on OS
  //printArray(fontList); //For listing all possible fonts to choose from, then createFont
}//END setup
//
void draw ()
{

  Leaves();
  /*
  if (mouseX>quitButtonX-(quitButtonWidth*1/2) && mouseX<quitButtonX+(quitButtonWidth*1/2) && mouseY>quitButtonY-(quitButtonHeight*1/2) && mouseY<quitButtonY+(quitButtonHeight*1/2)) {
   buttonColor= italianFlagGreen=#2F9739;
   } else {
   buttonColor= italianFlagRed;
   } //End Hover-Over Effect
   //
   println("X-value", quitButtonX, mouseX, quitButtonX+quitButtonWidth, "\t\t Look at the middle value");
   println("Y-value", quitButtonY, mouseY, quitButtonY+quitButtonHeight, "\t\t Look at the middle value");
   //
   */
  noStroke();
  fill(italianFlagRed);
  ellipse(leftquitButtonX, leftquitButtonY, leftquitButtonWidth, leftquitButtonHeight);
  ellipse(rightquitButtonX, rightquitButtonY, rightquitButtonWidth, rightquitButtonHeight);
  strokeWeight(reset);
  noStroke();
  
  strokeWeight(mouthOpen*23/100);
  stroke(green);
  line(FIRSTbabyLeafX1, FIRSTbabyLeafY1, FIRSTbabyLeafX2, FIRSTbabyLeafY2);
  stroke(italianFlagGreen);
  line(SECONDbabyLeafX1, SECONDbabyLeafY1, SECONDbabyLeafX2, SECONDbabyLeafY2);
  stroke(darkGreen);
  line(THIRDbabyLeafX1, THIRDbabyLeafY1, THIRDbabyLeafX2, THIRDbabyLeafY2);


  /*
   //the Quit Button's Bum
   stroke(black);
   ellipse(leftButtCheekX, leftButtCheekY, leftButtCheekWidth, leftButtCheekHeight);
   ellipse(rightButtCheekX, rightButtCheekY, rightButtCheekWidth, rightButtCheekHeight);
   strokeWeight(mouthOpen*1/4);
   stroke(italianFlagRed);
   // line(buttLineX1, buttLineY1, buttlineX2, buttlineY2);
   stroke(black);
   strokeWeight(reset);
   */
}//end draw

//
void keyPressed () 
{
  if ( key == 'I' || key=='i') exit();
  if (keyCode == '/') exit();
  //exit(); means that if one presses ANY button on the keyboard and it will exit the program
  //key means the letter buttons
  //keyCode means not letter buttons
}//End Keypressed
//
void mousePressed () 
{
  //if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit(); //When we press the button the program will close
}//End mousePressed
//
//End Main Program 
