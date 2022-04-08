void face ()
{
//Face:circle = inscribing a circle in a square.  
//For the face: want a circle in the middle of the screen, have to know what the larger size
//Orientation will be based on an "if" statement, told the user to put the phone in landscape mode or we will not show them anything.

rect(rectFaceX, rectFaceY, rectFaceDisplayWidth, rectFaceDisplayHeight );
fill(tomatoRed);
ellipse (faceX, faceY, faceDiameter, faceDiameter);
}//End face code
