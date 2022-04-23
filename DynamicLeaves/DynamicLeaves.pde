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
color darkGreen=#1A5A17;
color disappear=#CCCCCC;
color grey=#9B9696;


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
  // int canvasCenter = displayWidth*1/2


  Face ();
  Mouth ();
  Eyes ();
  Blush();
  Apron();
  Hands();


 
}//END setup
//
void draw ()
{

  Leaves();
  quitButtonAndSpeechBubble();

}//end draw

//
void keyPressed ()
{
  if ( key == 'I' || key=='i') exit();
  if (keyCode == '/') exit();
  //exit(); means that if one presses ANY button on the keyboard and it will exit the program
  //key means the letter buttons
  //keyCode means not letter buttons
}//End Keypressed
//
void mousePressed () 
{
  if (mouseX>displayWidth*1/8-(quitButtonWidth*1/2) || mouseX<displayWidth*1/12+(quitButtonWidth*1/2) || mouseY>leftQuitButtonY-(quitButtonHeight*1/2) || mouseY<leftQuitButtonY+(quitButtonHeight*1/2)) exit(); //When we press the button the program will close
}//End mousePressed
//
//End Main Program 
