//Global Variables
int smallerDisplayDimension; 
float rectFaceX, rectFaceY, rectFaceDisplayWidth, rectFaceDisplayHeight; 
float faceX, faceY, faceDiameter; 
//
//display geometry
fullScreen (); //it is a question dont put in numbers
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



//
//variable population, defining what a variable is
smallerDisplayDimension = displayHeight; //HEIGHT IS ALWAYS THE SMALLER DIMENSION IN LANDSCAPE MODE
rectFaceX = displayWidth*0; 
rectFaceY = displayHeight*0; 
rectFaceDisplayWidth = smallerDisplayDimension; //Square shape: needs the sname dimension
rectFaceDisplayHeight = smallerDisplayDimension; //Sqaure shape: needs the same dimension
faceX = displayWidth*1/2;
faceY = displayHeight*1/2; 
faceDiameter = displayWidth; 
//
//Face:circle = inscribing a circle in a square.  
//For the face: want a circle in the middle of the screen, have to know what the larger size
//Orientation will be based on an "if" statement, told the user to put the phone in landscape mode or we will not show them anything. 
rect(rectFaceX, rectFaceY, rectFaceDisplayWidth, rectFaceDisplayHeight );
ellipse (faceX, faceY, faceDiameter, faceDiameter);
//
//Left Eye
/*rect();
//
//Right Eye
rect();
//
//Nose 
rect();
//
//Mouth
rect();
//
//Measle
rect();
// */
