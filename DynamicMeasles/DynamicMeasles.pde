//Global Variables
int reset, smallerDisplayDimension, mouthOpen; 
float rectFaceX, rectFaceY, rectFaceDisplayWidth, rectFaceDisplayHeight; 
float faceX, faceY, faceDiameter; 

float rectLeftEyeX, rectLeftEyeY, rectRightEyeX, rectRightEyeY, rectEyeDisplayWidth, rectEyeDisplayHeight;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;

float rectNoseX, rectNoseY, rectNoseDisplayWidth, rectNoseDisplayHeight;
float xNose1, yNose1, xNose2, yNose2, xNose3, yNose3;

float rectMouthX, rectMouthY, rectMouthDisplayWidth, rectMouthDisplayHeight;
float mouthX1, mouthY1, mouthX2, mouthY2;

//
void setup ()
{
  
//DISPLAY GEOMETRY: goes at the front of every setup
fullScreen (); //it is a question dont put in numbers
//int appDisplayWidth= displayWidth, appDisplayHeight = displayHeight;
//println(appDisplayWidth, appDisplayHeight);
println(displayWidth, displayHeight);

//DISPLAY ORIENTATION: goes after display geometry
//Landscape not sqaure portrait 
//If our width is larger than our height we are in landscape mode
//if  ( displayWidth .+ displayHeight) {println("landscape or Square");} else {println("Portrait");}
String orientation = ( displayWidth >= displayHeight ) ? "Landscape or Square":"Portrait";
println ("DisplayOrientation:", orientation);
if (orientation == "Portrait") println("Turn your phooone");
//Another type of "if" statement: 

if (orientation == "Landscape or Sqaure"){
/*an empty if statement*/
} else {
println ("Turn your phooooooone");
} 

//variable population, defining what a variable is: ALWAYS IN VOID SETUP
smallerDisplayDimension = displayHeight; //HEIGHT IS ALWAYS THE SMALLER DIMENSION IN LANDSCAPE MODE
reset = smallerDisplayDimension/smallerDisplayDimension;
rectFaceX = (displayWidth*1/2) - (smallerDisplayDimension*1/2); 
rectFaceY = displayHeight*0; 
rectFaceDisplayWidth = smallerDisplayDimension; //Square shape: needs the sname dimension
rectFaceDisplayHeight = smallerDisplayDimension; //Sqaure shape: needs the same dimension
faceX = displayWidth*1/2;
faceY = displayHeight*1/2; 
faceDiameter = displayHeight;
//

leftEyeX = displayWidth*3/8;
rightEyeX = displayWidth*5/8; 
leftEyeY = displayHeight*1/4;
rightEyeY = leftEyeY; 
eyeDiameter = smallerDisplayDimension*1/4;
rectLeftEyeX= leftEyeX-(eyeDiameter*1/2); 
rectLeftEyeY= displayHeight*1/8;  
rectEyeDisplayWidth= smallerDisplayDimension*1/4;
rectEyeDisplayHeight= smallerDisplayDimension*1/4;
rectRightEyeX= rightEyeX-(eyeDiameter*1/2); 
rectRightEyeY= displayHeight*1/8;  


//
mouthX1 = leftEyeX;
mouthY1 = displayHeight*3/4;
mouthX2 = rightEyeX;
mouthY2 = mouthY1; 
mouthOpen = smallerDisplayDimension*1/8;

rectMouthX=leftEyeX-(mouthOpen*1/2);
rectMouthY=mouthY1-(mouthOpen*1/2);
rectMouthDisplayWidth= (mouthX2-mouthX1)+mouthOpen; 
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
//END OF POPULATING VARIABLES. 

//Face:circle = inscribing a circle in a square.  
//For the face: want a circle in the middle of the screen, have to know what the larger size
//Orientation will be based on an "if" statement, told the user to put the phone in landscape mode or we will not show them anything. 
rect(rectFaceX, rectFaceY, rectFaceDisplayWidth, rectFaceDisplayHeight );
ellipse (faceX, faceY, faceDiameter, faceDiameter);
//
//Left Eye
rect(rectLeftEyeX, rectLeftEyeY, rectEyeDisplayWidth, rectEyeDisplayHeight);
ellipse (leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
//
//Right Eye
rect(rectRightEyeX, rectRightEyeY, rectEyeDisplayWidth, rectEyeDisplayHeight);
ellipse (rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
//
//Nose 
rect(rectNoseX, rectNoseY, rectNoseDisplayWidth, rectNoseDisplayHeight);
triangle (xNose1, yNose1, xNose2, yNose2, xNose3, yNose3);
//
//Mouth
rect(rectMouthX, rectMouthY, rectMouthDisplayWidth, rectMouthDisplayHeight);
strokeWeight(mouthOpen);
line (mouthX1, mouthY1, mouthX2, mouthY2); 
strokeWeight(reset);
//strokeWeight();

}//end setup
//
void draw ()
{

//Measle
float measleDiameter= smallerDisplayDimension*1/25; //large measle=*1/25 small measle=*1/100
float measleRadius = random(measleDiameter*1/100, measleDiameter*1/25); 
println( measleRadius ); 
float measleX = random( rectFaceX+measleRadius,  (rectFaceX+rectFaceDisplayWidth)-measleRadius);
float measleY = random ( rectFaceY+measleRadius,  (rectFaceY+rectFaceDisplayHeight)-measleRadius);
Boolean nightMode = false; //note: IF-ELSE statement is similiar to ternary operator. 
//color pink=#F09D9D, measleColo=pink, whiteReset=#000000; 
color measleColor = ( nightMode == false) ? color( 255, random (0,50), random(0,80) ): color(255, random (0, 50), 0); //ternary operator
color whiteReset=#000000; 
//
//rect();
noStroke(); //gets rid of the shape outline. 
fill(measleColor);
ellipse(measleX, measleY, measleDiameter, measleDiameter);
stroke(whiteReset);

}//end draw

//
void keyPressed (){}//End Keypressed
//
void mousePressed (){}//End mousePressed
//
//End Main Program 
