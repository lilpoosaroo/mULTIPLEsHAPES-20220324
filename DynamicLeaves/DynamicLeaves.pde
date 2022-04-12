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
color buttonColor;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
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
  
  if(mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight){
   buttonColor= italianFlagGreen=#2F9739; 
  }else {
  buttonColor= italianFlagRed;
  } //End Hover-Over Effect
  //
 println("X-value", quitButtonX, mouseX, quitButtonX+quitButtonWidth, "\t\t Look at the middle value");
 println("Y-value", quitButtonY, mouseY, quitButtonY+quitButtonHeight, "\t\t Look at the middle value");
  //
  stroke(black);
  fill(buttonColor);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  strokeWeight(mouthOpen);
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
void mousePressed () 
{
  if( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit(); //When we press the button the program will close
}//End mousePressed
//
//End Main Program 
