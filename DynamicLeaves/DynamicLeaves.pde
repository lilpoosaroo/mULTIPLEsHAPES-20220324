//Global Variables, variable that runs in the ain program and all the sub programs
int reset, smallerDisplayDimension, mouthOpen; 
int appDisplayWidth, appDisplayHeight;
int boldLine;
color tomatoRed=#EA1C1C;
color white=#FFFFFF;
color black=#000000;
color green=#266C0F;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
//
void setup ()
{

  fullScreen (); //it is a question dont put in numbers
  //Landscape should be landscape not portrait
  
 
  //
  DisplayGeometryDisplayOrientation ();
  DeterminingLargerDimension();
  //
  population();
 // int canvasCenter = displayWidth*1/2;
  quitButtonX=displayWidth*1/16;
  quitButtonY=smallerDisplayDimension*1/4;
  quitButtonWidth=eyeDiameter*3;
  quitButtonHeight=eyeDiameter*2;

  
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
  stroke(italianFlagRed);
  strokeWeight(mouthOpen*5/8);
  fill(italianFlagRed);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  //
}//end draw

//
void keyPressed () 
{
  if( key == 'I' || key=='i') exit();
  if (keyCode == '/') exit();
  //exit(); means that if one presses ANY button on the keyboard and it will exit the program
  //key means the letter buttons
  //keyCode means not letter buttons
}//End Keypressed
//
void mousePressed () {
}//End mousePressed
//
//End Main Program 
