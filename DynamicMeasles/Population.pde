void population ()
{
  //variable population, defining what a variable is: ALWAYS IN VOID SETUP
smallerDisplayDimension = displayHeight; //HEIGHT IS ALWAYS THE SMALLER DIMENSION IN LANDSCAPE MODE
reset = smallerDisplayDimension/smallerDisplayDimension;
rectFaceX = (displayWidth*1/2) - (smallerDisplayDimension*1/2); 
rectFaceY = displayHeight*0; 
rectFaceDisplayWidth = smallerDisplayDimension; //Square shape: needs the sname dimension
rectFaceDisplayHeight = smallerDisplayDimension; //Sqaure shape: needs the same dimension
faceX = displayWidth*1/2;
faceY = displayHeight*1/2; 
faceDiameter = displayHeight;
//

leftEyeX = displayWidth*3/8;
rightEyeX = displayWidth*5/8; 
leftEyeY = displayHeight*1/4;
rightEyeY = leftEyeY; 
eyeDiameter = smallerDisplayDimension*1/4;
rectLeftEyeX= leftEyeX-(eyeDiameter*1/2); 
rectLeftEyeY= displayHeight*1/8;  
rectEyeDisplayWidth= smallerDisplayDimension*1/4;
rectEyeDisplayHeight= smallerDisplayDimension*1/4;
rectRightEyeX= rightEyeX-(eyeDiameter*1/2); 
rectRightEyeY= displayHeight*1/8;  


//
mouthX1 = leftEyeX;
mouthY1 = displayHeight*3/4;
mouthX2 = rightEyeX;
mouthY2 = mouthY1; 
mouthOpen = smallerDisplayDimension*1/8;

rectMouthX=leftEyeX-(mouthOpen*1/2);
rectMouthY=mouthY1-(mouthOpen*1/2);
rectMouthDisplayWidth= (mouthX2-mouthX1)+mouthOpen; 
rectMouthDisplayHeight= smallerDisplayDimension*1/8;
//
xNose1 = leftEyeX*4/3;
yNose1 = leftEyeY*4/3;

xNose2 = rightEyeX*13/14;
yNose2= rightEyeY*2;

xNose3 = leftEyeX*9/8;
yNose3 = leftEyeY*2; 

rectNoseX= xNose2 ;
rectNoseY= yNose1;
rectNoseDisplayWidth= xNose3-xNose2; 
rectNoseDisplayHeight=yNose3-yNose1;
//END OF POPULATING VARIABLES. 

}//End population
