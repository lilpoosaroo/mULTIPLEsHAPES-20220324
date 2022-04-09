
void mouth ()
{
//Mouth
//rect(rectMouthX, rectMouthY, rectMouthDisplayWidth, rectMouthDisplayHeight);
strokeWeight(mouthOpen*1/50);
ellipse(mouthX, mouthY, eyeDiameter*1/2, eyeDiameter*1/2); 
strokeWeight(reset);
//
line(smileX1, smileY1,smileX2, smileY2);
strokeWeight(mouthOpen*1/8);
//strokeWeight(tomatoRed);
line(smileX3, smileY3, smileX4, smileY4);

}//End mouth code
