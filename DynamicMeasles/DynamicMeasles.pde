//Global Variables, variable that runs in the ain program and all the sub programs
int reset, smallerDisplayDimension, mouthOpen; 
float rectFaceX, rectFaceY, rectFaceDisplayWidth, rectFaceDisplayHeight; 
float faceX, faceY, faceDiameter; 

int boldLine;
color tomatoRed=#EA1C1C;
color white=#FFFFFF;
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

float leftXBlush1a, leftYBlush1a, leftXBlush1b, leftYBlush1b; 
float leftXBlush2a, leftYBlush2a, leftXBlush2b, leftYBlush2b;
float leftXBlush3a, leftYBlush3a, leftXBlush3b, leftYBlush3b;
float rightBlush1XA, rightBlush1YA, rightBlush1XB, rightBlush1YB;
float rightBlush2XA, rightBlush2YA, rightBlush2XB, rightBlush2YB;
float rightBlush3XA, rightBlush3YA, rightBlush3XB, rightBlush3YB;


float apronX, apronY, apronWidth, apronHeight;
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
  
  apronX=leftEyeX;
  apronY=leftEyeY+(eyeDiameter*3); 
  apronWidth=rightEyeX-leftEyeX;
  apronHeight= smallerDisplayDimension*1/6;



  //END OF POPULATING VARIABLES. 
  //
  face ();
  //
}//END setup
//
void draw ()
{
  //
  eyes ();
  line(leftEyeLineX1, leftEyeLineY1, leftEyeLineX2, leftEyeLineY2);
  line(rightEyeLineX1, rightEyeLineY1, rightEyeLineX2, rightEyeLineY2);
  
   strokeWeight(boldLine);
   line(firstboldLineX1, firstboldLineY1, firstboldLineX2, firstboldLineY2);
   line(secondboldLineX1, secondboldLineY1, secondboldLineX2, secondboldLineY2);
   
   
  //
  //nose();
  //
  mouth ();
  //
  //Blush
  //leftEyeBlush3=;
  //leftEyeBlush1=;
  //leftEyeBlush2=;
  //leftEyeBlush3=;
  line(leftXBlush1a, leftYBlush1a, leftXBlush1b, leftYBlush1b);
  line(leftXBlush2a, leftYBlush2a, leftXBlush2b, leftYBlush2b);
  line(leftXBlush3a, leftYBlush3a, leftXBlush3b, leftYBlush3b);

  line(rightBlush1XA, rightBlush1YA, rightBlush1XB, rightBlush1YB);
  line(rightBlush2XA, rightBlush2YA, rightBlush2XB, rightBlush2YB);
  line(rightBlush3XA, rightBlush3YA, rightBlush3XB, rightBlush3YB);

//APRON
noStroke();
rect(apronX, apronY, apronWidth, apronHeight);
  //



  //measle ();
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
