void measle ()
{
//Measle
float measleDiameter= smallerDisplayDimension*1/25; //large measle=*1/25 small measle=*1/100
float measleRadius = random(measleDiameter*1/100, measleDiameter*1/25); 
println( measleRadius ); 
float measleX = random( rectFaceX+measleRadius,  (rectFaceX+rectFaceDisplayWidth)-measleRadius);
float measleY = random ( rectFaceY+measleRadius,  (rectFaceY+rectFaceDisplayHeight)-measleRadius);
Boolean nightMode = false; //note: IF-ELSE statement is similiar to ternary operator. 
color measleColor = ( nightMode == false) ? color( 255, random (0,50), random(0,80) ): color(255, random (0, 50), 0); //ternary operator
//rect( measleX-measleDiameter*3/2+measleDiameter, measleY-measleDiameter*3/2+measleDiameter, measleDiameter, measleDiameter);
noStroke(); //gets rid of the shape outline. 
fill(measleColor);
ellipse(measleX, measleY, measleDiameter, measleDiameter);
stroke(white);
}//End measle code
