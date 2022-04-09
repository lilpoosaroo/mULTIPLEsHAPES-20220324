void leaves ()

{

//Leaves
float leafWidth = eyeDiameter*1/4; 
float leafHeight= random (eyeDiameter*1/3, eyeDiameter*2); //large measle=*1/25 small measle=*1/100
float leafX =random(displayWidth*1/2 - (eyeDiameter),displayWidth*1/2 + (eyeDiameter) );
float leafY = random (smallerDisplayDimension*1/16, smallerDisplayDimension*1/8);
Boolean nightMode = false; //note: IF-ELSE statement is similiar to ternary operator. 

color leaf = ( nightMode == false) ? color( 111, 160, 17 ): color(26, 120, 23); //ternary operator
//rect( measleX-measleDiameter*3/2+measleDiameter, measleY-measleDiameter*3/2+measleDiameter, measleDiameter, measleDiameter); 
fill(leaf);
ellipse(leafX, leafY, leafWidth, leafHeight);
stroke(green);
}//End measle code 
