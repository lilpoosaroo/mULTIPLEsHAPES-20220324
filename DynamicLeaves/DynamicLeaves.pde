//Global Variables, variable that runs in the ain program and all the sub programs
int reset, smallerDisplayDimension, mouthOpen; 
float rectFaceX, rectFaceY, rectFaceDisplayWidth, rectFaceDisplayHeight; 
float faceX, faceY, faceDiameter; 

int boldLine;
color tomatoRed=#EA1C1C;
color white=#FFFFFF;
color black=#000000;
color green=#266C0F;
//
void setup ()
{

  fullScreen (); //it is a question dont put in numbers
  //
  DisplayGeometryDisplayOrientation ();
  //
  population();

  //END OF POPULATING VARIABLES. 
  //
  face ();
  mouth ();
  eyes ();
  blush();
  Apron();
  //APRON
  
  stroke(black);
  strokeWeight(mouthOpen*1/5);
  line(lilhandLeftX1, lilhandLeftY1, lilhandLeftX2, lilhandLeftY2);
  strokeWeight(mouthOpen*1/5);
  line(lilhandRightX1, lilhandRightY1, lilhandRightX2, lilhandRightY2);
  strokeWeight(reset);
  noStroke();



  //String[] fontList = PFont.list(); //To list all fonts available on OS
  //printArray(fontList); //For listing all possible fonts to choose from, then createFont
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
