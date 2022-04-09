void leaves ()

{

//Measle
float leafWidth = eyeDiameter*1/4; 
float leafHeight= random (eyeDiameter*1/3, eyeDiameter*1/2); //large measle=*1/25 small measle=*1/100
float leafX = random ( ( (displayWidth*1/2)-(eyeDiameter*1/2) ), ( (displayWidth*1/2)+(eyeDiameter*1/2) );
float leafY = smallerDisplayDimension*1/8;
Boolean nightMode = false; //note: IF-ELSE statement is similiar to ternary operator. 

color leaf = ( nightMode == false) ? color( 255, random (0,50), random(0,80) ): color(255, random (0, 50), 0); //ternary operator
//rect( measleX-measleDiameter*3/2+measleDiameter, measleY-measleDiameter*3/2+measleDiameter, measleDiameter, measleDiameter); 
fill(leaf);
ellipse(leafX, leafY, leafWidth, leafHeight);
stroke(green);
}//End measle code 
