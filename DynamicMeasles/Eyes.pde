
/*
leftEyeX = displayWidth*3/8;
rightEyeX = displayWidth*5/8; 
leftEyeY = displayHeight*1/2;
rightEyeY = leftEyeY; 
eyeDiameter = smallerDisplayDimension*1/16;
rectLeftEyeX= leftEyeX-(eyeDiameter*1/2); 
rectLeftEyeY= displayHeight*1/8;  
rectEyeDisplayWidth= smallerDisplayDimension*1/4;
rectEyeDisplayHeight= smallerDisplayDimension*1/4;
rectRightEyeX= rightEyeX-(eyeDiameter*1/2); 
rectRightEyeY= displayHeight*1/8;  
*/





void eyes ()
{
//Left Eye
//rect(rectLeftEyeX, rectLeftEyeY, rectEyeDisplayWidth, rectEyeDisplayHeight);
stroke(black);
strokeWeight(mouthOpen*1/18);
fill(white);
ellipse (leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
//
//Right Eye
//rect(rectRightEyeX, rectRightEyeY, rectEyeDisplayWidth, rectEyeDisplayHeight);

ellipse (rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
strokeWeight(reset);
}//End eye code
