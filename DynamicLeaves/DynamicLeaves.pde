//Global Variables, variable that runs in the ain program and all the sub programs
int reset, smallerDisplayDimension, mouthOpen; 
float rectFaceX, rectFaceY, rectFaceDisplayWidth, rectFaceDisplayHeight; 
float faceX, faceY, faceDiameter; 

int boldLine;
color tomatoRed=#EA1C1C;
color white=#FFFFFF;
color black=#000000;
float rectLeftEyeX, rectLeftEyeY, rectRightEyeX, rectRightEyeY, rectEyeDisplayWidth, rectEyeDisplayHeight;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float leftEyeLineX1, leftEyeLineY1, leftEyeLineX2, leftEyeLineY2;
float rightEyeLineX1, rightEyeLineY1, rightEyeLineX2, rightEyeLineY2;
float firstboldLineX1, firstboldLineY1, firstboldLineX2, firstboldLineY2;
float secondboldLineX1, secondboldLineY1, secondboldLineX2, secondboldLineY2;


float rectNoseX, rectNoseY, rectNoseDisplayWidth, rectNoseDisplayHeight;
float xNose1, yNose1, xNose2, yNose2, xNose3, yNose3;

float rectMouthX, rectMouthY, rectMouthDisplayWidth, rectMouthDisplayHeight;
float mouthX, mouthY;
float smileX1, smileY1, smileX2, smileY2;
float smileX3, smileY3, smileX4, smileY4;

float leftXBlush1a, leftYBlush1a, leftXBlush1b, leftYBlush1b; 
float leftXBlush2a, leftYBlush2a, leftXBlush2b, leftYBlush2b;
float leftXBlush3a, leftYBlush3a, leftXBlush3b, leftYBlush3b;
float rightBlush1XA, rightBlush1YA, rightBlush1XB, rightBlush1YB;
float rightBlush2XA, rightBlush2YA, rightBlush2XB, rightBlush2YB;
float rightBlush3XA, rightBlush3YA, rightBlush3XB, rightBlush3YB;


float rectApronX, rectApronY, rectApronWidth, rectApronHeight;
PImage Pic1;
int Pic1Width=1400;
int Pic1Height=1000;
int Pic1WidthAdjusted=;
int Pic1HeightAdjusted=;
int largerPic1Dimension, smallerPic1Dimension;
Boolean widthPic1Larger= false, heightPic1Larger=false;
float circle1AX, circle1AY, circle2AX, circle2AY, circle3AX, circle3AY, circle4AX, circle4AY;
float circle1BX, circle1BY;
float circle1CX, circle1CY;

String title = "  I love you from my     head to-ma-toes";
PFont titleFont;
color green=#165A00;
//
void setup ()
{

  fullScreen (); //it is a question dont put in numbers
  //
  DisplayGeometryDisplayOrientation ();
  //
  //variable population, defining what a variable is: ALWAYS IN VOID SETUP
  smallerDisplayDimension = displayHeight; //HEIGHT IS ALWAYS THE SMALLER DIMENSION IN LANDSCAPE MODE
  reset = smallerDisplayDimension/smallerDisplayDimension;
  rectFaceX = (displayWidth*1/2) - (smallerDisplayDimension*1/2); 
  rectFaceY = displayHeight*0; 
  rectFaceDisplayWidth = smallerDisplayDimension; //Square shape: needs the same dimension
  rectFaceDisplayHeight = smallerDisplayDimension; //Sqaure shape: needs the same dimension
  faceX = displayWidth*1/2;
  faceY = displayHeight*1/2; 
  faceDiameter = displayHeight;
  //

  leftEyeX = displayWidth*3/8;
  rightEyeX = displayWidth*5/8; 
  leftEyeY = displayHeight*1/2;
  rightEyeY = leftEyeY; 
  eyeDiameter = smallerDisplayDimension*1/16;
  rectLeftEyeX= leftEyeX-(eyeDiameter*1/2); 
  rectLeftEyeY= displayHeight*1/8;  
  rectEyeDisplayWidth= smallerDisplayDimension*1/4;
  rectEyeDisplayHeight= smallerDisplayDimension*1/4;
  rectRightEyeX= rightEyeX-(eyeDiameter*1/2); 
  rectRightEyeY= displayHeight*1/8;   

  leftEyeLineX1= leftEyeX-(eyeDiameter*20/50); 
  leftEyeLineY1= leftEyeY-(eyeDiameter*1/4);
  leftEyeLineX2= leftEyeX+(eyeDiameter*20/50); 
  leftEyeLineY2= leftEyeY+(eyeDiameter*1/4);


  rightEyeLineX1=rightEyeX+(eyeDiameter*20/50);
  rightEyeLineY1= rightEyeY-(eyeDiameter*1/4); 
  rightEyeLineX2=rightEyeX-(eyeDiameter*20/50);
  rightEyeLineY2=rightEyeY+(eyeDiameter*1/4);

  firstboldLineX1= leftEyeX*98/100; 
  firstboldLineY1=leftEyeY-(eyeDiameter*2/5);
  firstboldLineX2=leftEyeX*105/100;
  firstboldLineY2=leftEyeY;


  secondboldLineX1=rightEyeX*203/200;
  secondboldLineY1=firstboldLineY1;
  secondboldLineX2=rightEyeX*195/200;
  secondboldLineY2=firstboldLineY2;


  boldLine=smallerDisplayDimension*1/27;


  //
  mouthX = faceX;
  mouthY = faceY*105/100;
  mouthOpen = smallerDisplayDimension*1/8;

  smileX1=mouthX-(eyeDiameter*1/4); 
  smileY1=mouthY; 
  smileX2=mouthX+(eyeDiameter*1/4);
  smileY2=smileY1;

  smileX3=mouthX*97/100;
  smileY3=mouthY-(eyeDiameter*1/5); 
  smileX4=mouthX*103/100;
  smileY4=smileY3;


  rectMouthX=leftEyeX-(mouthOpen*1/2);
  rectMouthY=mouthY-(mouthOpen*1/2);
  rectMouthDisplayWidth= (mouthX)+mouthOpen; 
  rectMouthDisplayHeight= smallerDisplayDimension*1/8;
  //
  xNose1 = leftEyeX*4/3;
  yNose1 = leftEyeY*4/3;

  xNose2 = rightEyeX*13/14;
  yNose2= rightEyeY*2;

  xNose3 = leftEyeX*9/8;
  yNose3 = leftEyeY*2; 

  rectNoseX= xNose2 ;
  rectNoseY= yNose1;
  rectNoseDisplayWidth= xNose3-xNose2; 
  rectNoseDisplayHeight=yNose3-yNose1;
  //
  //Blush
  leftXBlush1a= leftEyeX-(eyeDiameter*1/2);
  leftYBlush1a=leftEyeY+(eyeDiameter);
  leftXBlush1b=leftEyeX-(eyeDiameter*1/4);
  leftYBlush1b= leftEyeY+(eyeDiameter*5/8);

  leftXBlush2a=    (eyeDiameter*1/4)+leftXBlush1a;
  leftYBlush2a=     leftYBlush1a;
  leftXBlush2b=     (eyeDiameter*1/4)+leftXBlush1b;
  leftYBlush2b=      leftEyeY+(eyeDiameter*5/8);

  leftXBlush3a=      (eyeDiameter*1/4)+leftXBlush2a; 
  leftYBlush3a=     leftYBlush1a;
  leftXBlush3b=    (eyeDiameter*1/4)+leftXBlush2b;
  leftYBlush3b=    leftYBlush1b;


  rightBlush2XA=rightEyeX+(eyeDiameter*1/4);
  rightBlush2YA= leftYBlush1a;
  rightBlush2XB=rightEyeX;
  rightBlush2YB=leftYBlush1b;

  rightBlush1XA=rightBlush2XB;
  rightBlush1YA=leftYBlush1a;
  rightBlush1XB= rightEyeX-(eyeDiameter*1/4);
  rightBlush1YB=leftYBlush1b;

  rightBlush3XA=rightEyeX+(eyeDiameter*1/2);
  rightBlush3YA= rightBlush2YA;
  rightBlush3XB= rightBlush2XA;
  rightBlush3YB= rightBlush1YB;

  //APRON

  rectApronX=leftEyeX;
  rectApronY=leftEyeY+(eyeDiameter*3); 
  rectApronWidth=rightEyeX-leftEyeX;
  rectApronHeight= smallerDisplayDimension*1/6;
  Pic1 = loadImage("Italian Flag - 1400 x1000.jpg");
  if (Pic1Width > Pic1Height){
largerPic1Dimension=Pic1Width;
smallerPic1Dimension=Pic1Height;
widthPic1Larger=true;
} else {
largerPic1Dimension=Pic1Height;
smallerPic1Dimension=Pic1Width;
heightPic1Larger=true;
}
  circle1AX=rectApronX;
  circle1AY=rectApronY;
  circle2AX=rectApronX;
  circle2AY=rectApronY+rectApronHeight; 
  circle3AX=rectApronX+rectApronWidth;
  circle3AY=rectApronY+rectApronHeight;
  circle4AX=rectApronX+rectApronWidth;
  circle4AY=rectApronY;
  titleFont = createFont("Calibri Bold Italic", 80);
  circle1BX=rectApronX;
  circle1BY=rectApronY+(rectApronHeight*1/3);
  circle1CX=rectApronX;
  circle1CY=circle1BY+(rectApronHeight*1/3);




  //END OF POPULATING VARIABLES. 
  //
  face ();
  mouth ();
  eyes ();
  line(leftEyeLineX1, leftEyeLineY1, leftEyeLineX2, leftEyeLineY2);
  line(rightEyeLineX1, rightEyeLineY1, rightEyeLineX2, rightEyeLineY2);

  strokeWeight(boldLine);
  line(firstboldLineX1, firstboldLineY1, firstboldLineX2, firstboldLineY2);
  line(secondboldLineX1, secondboldLineY1, secondboldLineX2, secondboldLineY2);
  //Blush
  //leftEyeBlush3=;
  //leftEyeBlush1=;
  //leftEyeBlush2=;
  //leftEyeBlush3=;
  strokeWeight(mouthOpen*1/23);
  line(leftXBlush1a, leftYBlush1a, leftXBlush1b, leftYBlush1b);
  line(leftXBlush2a, leftYBlush2a, leftXBlush2b, leftYBlush2b);
  line(leftXBlush3a, leftYBlush3a, leftXBlush3b, leftYBlush3b);

  line(rightBlush1XA, rightBlush1YA, rightBlush1XB, rightBlush1YB);
  line(rightBlush2XA, rightBlush2YA, rightBlush2XB, rightBlush2YB);
  line(rightBlush3XA, rightBlush3YA, rightBlush3XB, rightBlush3YB);
  strokeWeight(reset);
  //APRON
  noStroke();
  rect(rectApronX, rectApronY, rectApronWidth, rectApronHeight);
  image(Pic1, rectApronX, rectApronY, rectApronWidth, rectApronHeight);
  ellipse(circle1AX, circle1AY, rectApronWidth*1/8, rectApronWidth*1/8);
  ellipse(circle2AX, circle2AY, rectApronWidth*1/8, rectApronWidth*1/8);
  ellipse(circle3AX, circle3AY, rectApronWidth*1/8, rectApronWidth*1/8); 
  ellipse(circle4AX, circle4AY, rectApronWidth*1/8, rectApronWidth*1/8);
  ellipse(circle1BX, circle1BY, rectApronWidth*1/8, rectApronWidth*1/8);
  ellipse(circle1CX, circle1CY, rectApronWidth*1/8, rectApronWidth*1/8); 
  fill(green); 
  textAlign(CENTER, CENTER); 
  textFont(titleFont, 30); //Change the number until it fits
  text(title, rectApronX, rectApronY, rectApronWidth, rectApronHeight);
  //
  //
  String[] fontList = PFont.list(); //To list all fonts available on OS
  printArray(fontList); //For listing all possible fonts to choose from, then createFont
}//END setup
//
void draw ()
{
 
  leaves();
  //
}//end draw

//
void keyPressed () {
}//End Keypressed
//
void mousePressed () {
}//End mousePressed
//
//End Main Program 