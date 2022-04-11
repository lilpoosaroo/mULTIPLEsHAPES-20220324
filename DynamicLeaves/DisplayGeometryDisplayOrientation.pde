void DisplayGeometryDisplayOrientation ()
{
//DISPLAY GEOMETRY: goes at the front of every setup
//int appDisplayWidth= displayWidth, appDisplayHeight = displayHeight;
//println(appDisplayWidth, appDisplayHeight);
println(displayWidth, displayHeight);

//DISPLAY ORIENTATION: goes after display geometry
//Landscape not sqaure portrait 
//If our width is larger than our height we are in landscape mode
//if  ( displayWidth .+ displayHeight) {println("landscape or Square");} else {println("Portrait");}
String displayOrientation= (displayWidth >= displayHeight) ? "Yay you are in landscape mode" : "Turn your phone kiddo";
  if (displayWidth < displayHeight) println(displayOrientation);
//Another type of "if" statement: 
}//End display geometry and orientation
