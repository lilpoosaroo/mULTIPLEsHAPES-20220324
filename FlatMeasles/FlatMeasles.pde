//Global Variables
int reset, smallerDisplayDimension, mouthOpen; 
float rectFaceX, rectFaceY, rectFaceDisplayWidth, rectFaceDisplayHeight; 
float faceX, faceY, faceDiameter; 
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float xNose1, yNose1, xNose2, yNose2, xNose3, yNose3, mouthX1, mouthY1, mouthX2, mouthY2;

//
//display geometry
fullScreen (); //it is a question dont put in numbers
//int appDisplayWidth= displayWidth, appDisplayHeight = displayHeight;
//println(appDisplayWidth, appDisplayHeight);
println(displayWidth, displayHeight);
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



// faceX = displayWidth;
//faceY = displayHeight*1/15; 
//variable population, defining what a variable is
smallerDisplayDimension = displayHeight; //HEIGHT IS ALWAYS THE SMALLER DIMENSION IN LANDSCAPE MODE
reset = smallerDisplayDimension/smallerDisplayDimension;
rectFaceX = (displayWidth*1/2) - (smallerDisplayDimension*1/2); 
rectFaceY = displayHeight*0; 
rectFaceDisplayWidth = smallerDisplayDimension; //Square shape: needs the sname dimension
rectFaceDisplayHeight = smallerDisplayDimension; //Sqaure shape: needs the same dimension
faceX = displayWidth*1/2;
faceY = displayHeight*1/2; 
faceDiameter = displayHeight;
leftEyeX = displayWidth*3/8;
rightEyeX = displayWidth*5/8; 
leftEyeY = displayHeight*1/4;
rightEyeY = leftEyeY; 
eyeDiameter = smallerDisplayDimension*1/4;
//
mouthX1 = leftEyeX;
mouthY1 = displayHeight*3/4;
mouthX2 = rightEyeX;
mouthY2 = mouthY1; 
mouthOpen = smallerDisplayDimension*1/8;
//
xNose1 = leftEyeX*4/3;
yNose1 = leftEyeY*4/3;

xNose2 = rightEyeX*13/14;
yNose2= rightEyeY*2;

xNose3 = leftEyeX*9/8;
yNose3 = leftEyeY*2; 


//
//Face:circle = inscribing a circle in a square.  
//For the face: want a circle in the middle of the screen, have to know what the larger size
//Orientation will be based on an "if" statement, told the user to put the phone in landscape mode or we will not show them anything. 
rect(rectFaceX, rectFaceY, rectFaceDisplayWidth, rectFaceDisplayHeight );
ellipse (faceX, faceY, faceDiameter, faceDiameter);
//
//Left Eye
//rect();
ellipse (leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
//
//Right Eye
//rect();
ellipse (rightEyeX, leftEyeY, eyeDiameter, eyeDiameter);
//
//Nose 
//rect();
triangle (xNose1, yNose1, xNose2, yNose2, xNose3, yNose3);
//
//Mouth
//rect();
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
//color pink=#F09D9D, measleColo=pink, whiteReset=#000000; 
color measleColor = ( nightMode == false) ? color( 255, random (0,50), random(0,80) ): night ; //ternary operator
color measleColor = ( nightMode == true) ? : ; //ternary operator
//
color pink=#F09D9D, measleColor=pink, whiteReset=#000000; 
//
//rect();
noStroke(); //gets rid of the shape outline. 
fill(measleColor);
ellipse(measleX, measleY, measleDiameter, measleDiameter);
stroke(whiteReset);
// 
