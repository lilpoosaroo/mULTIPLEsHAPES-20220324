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
  line(leftEyeLineX1, leftEyeLineY1, leftEyeLineX2, leftEyeLineY2);
  line(rightEyeLineX1, rightEyeLineY1, rightEyeLineX2, rightEyeLineY2);

  strokeWeight(boldLine);
  line(firstboldLineX1, firstboldLineY1, firstboldLineX2, firstboldLineY2);
  line(secondboldLineX1, secondboldLineY1, secondboldLineX2, secondboldLineY2);
  //Blush
  //leftEyeBlush3=;
  //leftEyeBlush1=;
  //leftEyeBlush2=;
  //leftEyeBlush3=;
  strokeWeight(mouthOpen*1/23);
  line(leftXBlush1a, leftYBlush1a, leftXBlush1b, leftYBlush1b);
  line(leftXBlush2a, leftYBlush2a, leftXBlush2b, leftYBlush2b);
  line(leftXBlush3a, leftYBlush3a, leftXBlush3b, leftYBlush3b);

  line(rightBlush1XA, rightBlush1YA, rightBlush1XB, rightBlush1YB);
  line(rightBlush2XA, rightBlush2YA, rightBlush2XB, rightBlush2YB);
  line(rightBlush3XA, rightBlush3YA, rightBlush3XB, rightBlush3YB);
  strokeWeight(reset);
  //APRON
  noStroke();
  rect(rectApronX, rectApronY, rectApronWidth, rectApronHeight);
  image(Pic1, rectApronX, rectApronY, rectApronWidth, rectApronHeight);

  fill(black); 
  textAlign(CENTER, TOP); 
  textFont(titleFont, 10); //Change the number until it fits
  text(title, rectApronX, rectApronY, rectApronWidth, rectApronHeight);
  fill(italianFlagGreen);
  rect(stringLeftX, stringLeftY, stringLeftWidth, stringLeftHeight);
  ellipse(circle1AX, circle1AY, circleApronDiameter, circleApronDiameter);
  ellipse(circle1BX, circle1BY, circleApronDiameter, circleApronDiameter);
  ellipse(circle1CX, circle1CY, circleApronDiameter, circleApronDiameter); 
  ellipse(circle2AX, circle2AY, circleApronDiameter, circleApronDiameter);
  fill(white);
  rect(stringMidX, stringMidY, stringMidWidth, stringMidHeight);
  ellipse(circle2BX, circle2BY, circleApronDiameter, circleApronDiameter);
  ellipse(circle2CX, circle2CY, circleApronDiameter, circleApronDiameter);
  ellipse(circle2DX, circle2DY, circleApronDiameter, circleApronDiameter);
  ellipse( circle2EX, circle2EY, circleApronDiameter, circleApronDiameter);
  ellipse(circle2FX, circle2FY, circleApronDiameter, circleApronDiameter);
  ellipse(circle2GX, circle2GY, circleApronDiameter, circleApronDiameter);
  ellipse(circle2HX, circle2HY, circleApronDiameter, circleApronDiameter);
  fill(italianFlagRed);
  rect(stringRightX, stringRightY, stringRightWidth, stringRightHeight);
  ellipse(circle3AX, circle3AY, circleApronDiameter, circleApronDiameter); 
  ellipse(circle3BX, circle3BY, circleApronDiameter, circleApronDiameter);
  ellipse(circle3CX, circle3CY, circleApronDiameter, circleApronDiameter);
  ellipse(circle4AX, circle4AY, circleApronDiameter, circleApronDiameter);
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
