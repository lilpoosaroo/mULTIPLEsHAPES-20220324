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
//
population ();
//


//Face:circle = inscribing a circle in a square.  
//For the face: want a circle in the middle of the screen, have to know what the larger size
//Orientation will be based on an "if" statement, told the user to put the phone in landscape mode or we will not show them anything. 
rect(rectFaceX, rectFaceY, rectFaceDisplayWidth, rectFaceDisplayHeight );
ellipse (faceX, faceY, faceDiameter, faceDiameter);
}//END setup
//
void draw ()
{

//Left Eye
//rect(rectLeftEyeX, rectLeftEyeY, rectEyeDisplayWidth, rectEyeDisplayHeight);
color black=#000000, white=#FFFFFF;;
stroke(black);
fill(white);
ellipse (leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
//
//Right Eye
//rect(rectRightEyeX, rectRightEyeY, rectEyeDisplayWidth, rectEyeDisplayHeight);

ellipse (rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
//
//Nose 
//rect(rectNoseX, rectNoseY, rectNoseDisplayWidth, rectNoseDisplayHeight);

triangle (xNose1, yNose1, xNose2, yNose2, xNose3, yNose3);
//
//Mouth
//rect(rectMouthX, rectMouthY, rectMouthDisplayWidth, rectMouthDisplayHeight);

strokeWeight(mouthOpen);
line (mouthX1, mouthY1, mouthX2, mouthY2); 
strokeWeight(reset);
//strokeWeight();

//Measle
float measleDiameter= smallerDisplayDimension*1/25; //large measle=*1/25 small measle=*1/100
float measleRadius = random(measleDiameter*1/100, measleDiameter*1/25); 
println( measleRadius ); 
float measleX = random( rectFaceX+measleRadius,  (rectFaceX+rectFaceDisplayWidth)-measleRadius);
float measleY = random ( rectFaceY+measleRadius,  (rectFaceY+rectFaceDisplayHeight)-measleRadius);
Boolean nightMode = false; //note: IF-ELSE statement is similiar to ternary operator. 
color measleColor = ( nightMode == false) ? color( 255, random (0,50), random(0,80) ): color(255, random (0, 50), 0); //ternary operator
//rect( measleX-measleDiameter*3/2+measleDiameter, measleY-measleDiameter*3/2+measleDiameter, measleDiameter, measleDiameter);
noStroke(); //gets rid of the shape outline. 
fill(measleColor);
ellipse(measleX, measleY, measleDiameter, measleDiameter);
stroke(white);

}//end draw

//
void keyPressed (){}//End Keypressed
//
void mousePressed (){}//End mousePressed
//
//End Main Program 
