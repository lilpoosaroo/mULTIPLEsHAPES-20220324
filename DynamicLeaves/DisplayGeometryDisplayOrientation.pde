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
String orientation = ( displayWidth >= displayHeight ) ? "Landscape or Square":"Portrait";
println ("DisplayOrientation:", orientation);
if (orientation == "Portrait") println("Turn your phooone");
//Another type of "if" statement: 

if (orientation == "Landscape or Sqaure"){
/*an empty if statement*/
} else {
println ("Turn your phooooooone");
} 
}//End display geometry and orientation
