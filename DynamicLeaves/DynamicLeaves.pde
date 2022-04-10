//Global Variables, variable that runs in the ain program and all the sub programs
int reset, smallerDisplayDimension, mouthOpen; 
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
  DeterminingLargerDimension();
  //
  population();

  
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
