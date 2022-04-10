//Global Variables
float mouthX, mouthY;
float smileX1, smileY1, smileX2, smileY2;
float smileX3, smileY3, smileX4, smileY4;
//End of global variables

void mouth ()
{
//Mouth
//rect(rectMouthX, rectMouthY, rectMouthDisplayWidth, rectMouthDisplayHeight);
strokeWeight(mouthOpen*1/18);
ellipse(mouthX, mouthY, eyeDiameter*1/2, eyeDiameter*1/2); 
line(smileX1, smileY1,smileX2, smileY2);
strokeWeight(mouthOpen*1/6);
stroke(tomatoRed);
line(smileX3, smileY3, smileX4, smileY4);
strokeWeight(reset);
}//End mouth code
