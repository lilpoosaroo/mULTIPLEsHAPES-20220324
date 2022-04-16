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
color leaf1=green;
color leaf2=italianFlagGreen;
color leaf3=darkGreen;
color QuitButton=italianFlagRed;
color frontBody, frontBodyEyes, frontBodySmileFill, frontBodySmileOutline, mouthLine;
color disappear=#CCCCCC;
float leftQuitButtonX, leftQuitButtonY, rightQuitButtonX, rightQuitButtonY;
float quitButtonWidth, quitButtonHeight;
float FIRSTbabyLeafX1, FIRSTbabyLeafY1, FIRSTbabyLeafX2, FIRSTbabyLeafY2;
float SECONDbabyLeafX1, SECONDbabyLeafY1, SECONDbabyLeafX2, SECONDbabyLeafY2;
float THIRDbabyLeafX1, THIRDbabyLeafY1, THIRDbabyLeafX2, THIRDbabyLeafY2;


float frontBodyX, frontBodyY, frontBodyWidth, frontBodyHeight;
float babyLeftEyeX, babyLeftEyeY, babyRightEyeX, babyRightEyeY;
float babyEyeDiameter;


float smileCirleX, smileCircleY, smileCircleDiameter;
float smileLineX1, smileLineY1, smileLineX2, smileLineY2;
/*
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


  //BACK OF BODY
  /*
  leftQuitButtonX=displayWidth*1/12;
   leftQuitButtonY=smallerDisplayDimension*1/4;
   rightQuitButtonX= displayWidth*1/8;
   rightQuitButtonY=leftQuitButtonY;
   quitButtonWidth=eyeDiameter*35/20;
   quitButtonHeight=eyeDiameter*2;
   
   FIRSTbabyLeafX1=leftQuitButtonX+(quitButtonWidth*30/100);
   FIRSTbabyLeafY1=leftQuitButtonY-(quitButtonHeight*30/100);
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
   
   
   //FRONT OF BODY
   
   frontBodyX=leftQuitButtonX+(quitButtonWidth*1/3); 
   frontBodyY=smallerDisplayDimension*1/4;
   frontBodyWidth=quitButtonWidth*4/3;
   frontBodyHeight=quitButtonHeight;
   
   babyLeftEyeX=frontBodyX;
   babyLeftEyeY=frontBodyY-(frontBodyHeight*1/8);
   babyRightEyeX=frontBodyX+(frontBodyWidth*1/4);
   babyRightEyeY=babyLeftEyeY;
   babyEyeDiameter=eyeDiameter*1/4;
   
   
   smileCirleX=babyRightEyeX*92/100;
   smileCircleY=babyLeftEyeY*105/100;
   smileCircleDiameter=babyEyeDiameter;
   
   smileLineX1=smileCirleX-(babyEyeDiameter*1/2);
   smileLineY1=smileCircleY-(babyEyeDiameter*40/100);
   smileLineX2=smileCirleX+(babyEyeDiameter*1/2);
   smileLineY2=smileLineY1;
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
  
   if (mouseX>rightQuitButtonX+(quitButtonWidth*1/2) || mouseX<leftQuitButtonX-(quitButtonWidth*1/2) || mouseY>leftQuitButtonY+(quitButtonHeight*1/2) || mouseY<leftQuitButtonY-(quitButtonHeight*1/2)) 
  {

    leaf1=green;
    leaf2=italianFlagGreen;
    leaf3=darkGreen;
    QuitButton=italianFlagRed;
    frontBody=disappear;
    frontBodyEyes=disappear;
    frontBodySmileFill=disappear;
    mouthLine=disappear;
  } else {
    leaf1=darkGreen;
    leaf2=italianFlagGreen;
    leaf3=green;
    QuitButton=disappear;
    frontBody=italianFlagRed;
    frontBodyEyes=black;
    frontBodySmileFill=italianFlagRed;
    frontBodySmileOutline=black;
    mouthLine=italianFlagRed;
  } 

  if (mouseX>rightQuitButtonX+(quitButtonWidth*1/2) || mouseX<leftQuitButtonX-(quitButtonWidth*1/2) || mouseY>leftQuitButtonY+(quitButtonHeight*1/2) || mouseY<leftQuitButtonY-(quitButtonHeight*1/2)) 
  { 
    frontBodyX=leftQuitButtonX+(quitButtonWidth*1/3); 
    frontBodyY=smallerDisplayDimension*1/2;

    babyLeftEyeX=frontBodyX;
    babyLeftEyeY=frontBodyY-(frontBodyHeight*1/8);
    babyRightEyeX=frontBodyX+(frontBodyWidth*1/4);
    babyRightEyeY=babyLeftEyeY;


    smileCirleX=babyRightEyeX*92/100;
    smileCircleY=babyLeftEyeY*105/100;

    smileLineX1=smileCirleX-(babyEyeDiameter*1/2);
    smileLineY1=smileCircleY-(babyEyeDiameter*40/100);
    smileLineX2=smileCirleX+(babyEyeDiameter*1/2);
    smileLineY2=smileLineY1;

    leftQuitButtonX=displayWidth*1/12;
    leftQuitButtonY=smallerDisplayDimension*1/4;
    rightQuitButtonX= displayWidth*1/8;
    rightQuitButtonY=leftQuitButtonY;

    FIRSTbabyLeafX1=leftQuitButtonX+(quitButtonWidth*30/100);
    FIRSTbabyLeafY1=leftQuitButtonY-(quitButtonHeight*30/100);
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
  } else {
    frontBodyX=leftQuitButtonX+(quitButtonWidth*1/3); 
    frontBodyY=smallerDisplayDimension*1/4;

    babyLeftEyeX=frontBodyX;
    babyLeftEyeY=frontBodyY-(frontBodyHeight*1/8);
    babyRightEyeX=frontBodyX+(frontBodyWidth*1/4);
    babyRightEyeY=babyLeftEyeY;
    babyEyeDiameter=eyeDiameter*1/4;


    smileCirleX=babyRightEyeX*92/100;
    smileCircleY=babyLeftEyeY*105/100;
    smileCircleDiameter=babyEyeDiameter;

    smileLineX1=smileCirleX-(babyEyeDiameter*1/2);
    smileLineY1=smileCircleY-(babyEyeDiameter*40/100);
    smileLineX2=smileCirleX+(babyEyeDiameter*1/2);
    smileLineY2=smileLineY1;

    leftQuitButtonX=displayWidth*1/12;
    leftQuitButtonY=smallerDisplayDimension*1/2;
    rightQuitButtonX= displayWidth*1/8;
    rightQuitButtonY=leftQuitButtonY;

    FIRSTbabyLeafX1=leftQuitButtonX+(quitButtonWidth*30/100);
    FIRSTbabyLeafY1=leftQuitButtonY-(quitButtonHeight*30/100);
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
  }

//End Hover-Over Effect
  //
  //println("X-value", leftQuitButtonX, mouseX, quitButtonX+quitButtonWidth, "\t\t Look at the middle value");
  // println("Y-value", leftQuitButtonY, mouseY, quitButtonY+quitButtonHeight, "\t\t Look at the middle value");
  //


  noStroke();
  fill(QuitButton);
  ellipse(leftQuitButtonX, leftQuitButtonY, quitButtonWidth, quitButtonHeight);
  ellipse(rightQuitButtonX, rightQuitButtonY, quitButtonWidth, quitButtonHeight);
  strokeWeight(reset);
  noStroke();

  strokeWeight(mouthOpen*23/100);
  stroke(leaf1);
  line(FIRSTbabyLeafX1, FIRSTbabyLeafY1, FIRSTbabyLeafX2, FIRSTbabyLeafY2);
  stroke(leaf2);
  line(SECONDbabyLeafX1, SECONDbabyLeafY1, SECONDbabyLeafX2, SECONDbabyLeafY2);
  stroke(leaf3);
  line(THIRDbabyLeafX1, THIRDbabyLeafY1, THIRDbabyLeafX2, THIRDbabyLeafY2);

  //FRONT BODY
  fill(frontBody);
  noStroke();
  ellipse( frontBodyX, frontBodyY, frontBodyWidth, frontBodyHeight);
  fill(frontBodyEyes);
  //FRONT BODY EYE
  ellipse(babyLeftEyeX, babyLeftEyeY, babyEyeDiameter, babyEyeDiameter);
  ellipse(babyRightEyeX, babyRightEyeY, babyEyeDiameter, babyEyeDiameter);
  //FRONT BODY SMILE
  fill(frontBodySmileFill);
  stroke(frontBodySmileOutline);
  strokeWeight(mouthOpen*1/34);
  ellipse(smileCirleX, smileCircleY, smileCircleDiameter, smileCircleDiameter);
  strokeWeight(mouthOpen*1/18);
  stroke(mouthLine);
  line(smileLineX1, smileLineY1, smileLineX2, smileLineY2);
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
