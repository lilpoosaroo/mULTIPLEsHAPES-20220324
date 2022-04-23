//Global Variables
color leaf1;
color leaf2;
color leaf3;
color QuitButton;
color speechBubbleFill, speechColor, speechBubbleOutline; 
color frontBody, frontBodyEyes, frontBodySmileFill, frontBodySmileOutline, mouthLine;
float leftQuitButtonX, leftQuitButtonY, rightQuitButtonX, rightQuitButtonY;
float quitButtonWidth, quitButtonHeight;
float FIRSTbabyLeafX1, FIRSTbabyLeafY1, FIRSTbabyLeafX2, FIRSTbabyLeafY2;
float SECONDbabyLeafX1, SECONDbabyLeafY1, SECONDbabyLeafX2, SECONDbabyLeafY2;
float THIRDbabyLeafX1, THIRDbabyLeafY1, THIRDbabyLeafX2, THIRDbabyLeafY2;
float frontBodyX, frontBodyY, frontBodyWidth, frontBodyHeight;
float babyLeftEyeX, babyLeftEyeY, babyRightEyeX, babyRightEyeY;
float babyEyeDiameter;
float smileCirleX, smileCircleY, smileCircleDiameter;
float smileLineX1, smileLineY1, smileLineX2, smileLineY2;
float speechBubbleX, speechBubbleY, speechBubbleDiameter;
float speechBubbleTriangleX1, speechBubbleTriangleY1, speechBubbleTriangleX2, speechBubbleTriangleY2, speechBubbleTriangleX3, speechBubbleTriangleY3;
String speech="  Click me to         close program       :)!      ";
PFont speechFont; 
//
void quitButtonAndSpeechBubble () {
  
 // String[] fontList = PFont.list(); //To list all fonts available on OS
 // printArray(fontList); //For listing all possible fonts to choose from, then createFont

  if (mouseX>displayWidth*1/8+(quitButtonWidth*1/2) || mouseX<displayWidth*1/12-(quitButtonWidth*1/2) || mouseY>leftQuitButtonY+(quitButtonHeight*1/2) || mouseY<leftQuitButtonY-(quitButtonHeight*1/2)) 
  {

    leaf1=green;
    leaf2=italianFlagGreen;
    leaf3=darkGreen;
    QuitButton=italianFlagRed;
    frontBody=disappear;
    frontBodyEyes=disappear;
    frontBodySmileFill=disappear;
    frontBodySmileOutline=disappear;
    mouthLine=disappear;

    speechColor=disappear;
    speechBubbleFill=disappear;
    speechBubbleOutline=disappear;
  } else {
    leaf1=darkGreen;
    leaf2=italianFlagGreen;
    leaf3=green;
    frontBody=italianFlagRed;
    frontBodySmileFill=italianFlagRed;
    mouthLine=italianFlagRed;
    frontBodyEyes=black;
    frontBodySmileOutline=black;
    QuitButton=disappear;

    speechBubbleFill=white;
    speechBubbleOutline=grey; 
    speechColor=black;
  } 
  //When mouse is not touching tomatoe
  if (mouseX>rightQuitButtonX+(quitButtonWidth*1/2) || mouseX<leftQuitButtonX-(quitButtonWidth*1/2) || mouseY>smallerDisplayDimension*1/4+(quitButtonHeight*1/2) || mouseY<smallerDisplayDimension*1/4-(quitButtonHeight*1/2)) 
  { 

    leftQuitButtonX=displayWidth*1/12;
    leftQuitButtonY=displayHeight*1/4;
    rightQuitButtonX= displayWidth*1/8;
    rightQuitButtonY=leftQuitButtonY;



    //FRONT OF BODY


    frontBodyX=leftQuitButtonX+(quitButtonWidth*1/3); 
    frontBodyY=smallerDisplayDimension;


    babyLeftEyeX=frontBodyX;
    babyLeftEyeY=frontBodyY-(frontBodyHeight*1/8);
    babyRightEyeX=frontBodyX+(frontBodyWidth*1/4);
    babyRightEyeY=babyLeftEyeY;


    smileCirleX=babyRightEyeX*92/100;
    smileCircleY=babyLeftEyeY*105/100;
    smileCircleDiameter=babyEyeDiameter;

    smileLineX1=smileCirleX-(babyEyeDiameter*1/2);
    smileLineY1=smileCircleY-(babyEyeDiameter*40/100);
    smileLineX2=smileCirleX+(babyEyeDiameter*1/2);
    smileLineY2=smileLineY1;




    speechBubbleX=displayWidth*1/8;
    speechBubbleY=displayHeight*3/4;
    speechBubbleDiameter=displayHeight*1/5;


    speechBubbleTriangleX1=displayWidth*15/100;
    speechBubbleTriangleY1=displayHeight*1/2;
    speechBubbleTriangleX2=displayWidth*10/90;
    speechBubbleTriangleY2=displayHeight*1/2;
    speechBubbleTriangleX3=displayWidth*15/90;
    speechBubbleTriangleY3=displayHeight*1/2;

    fill(speechBubbleFill);
    stroke(speechBubbleOutline);
    strokeWeight(mouthOpen*1/20);
    triangle(speechBubbleTriangleX1, speechBubbleTriangleY1, speechBubbleTriangleX2, speechBubbleTriangleY2, speechBubbleTriangleX3, speechBubbleTriangleY3);
    fill(speechBubbleFill);
    stroke(speechBubbleOutline);
    ellipse(speechBubbleX, speechBubbleY, speechBubbleDiameter, speechBubbleDiameter);
    fill(speechColor);
    textAlign(CENTER, TOP);
    textFont(speechFont, 23); //Change the number until it fits
    text(speech, speechBubbleX*73/100, speechBubbleY*1/2, speechBubbleDiameter, speechBubbleDiameter);
  } else {
    frontBodyX=leftQuitButtonX+(quitButtonWidth*1/3); 
    frontBodyY=smallerDisplayDimension*1/4;

    babyLeftEyeX=frontBodyX;
    babyLeftEyeY=frontBodyY-(frontBodyHeight*1/8);
    babyRightEyeX=frontBodyX+(frontBodyWidth*1/4);
    babyRightEyeY=babyLeftEyeY;



    smileCirleX=babyRightEyeX*92/100;
    smileCircleY=babyLeftEyeY*105/100;


    smileLineX1=smileCirleX-(babyEyeDiameter*1/2);
    smileLineY1=smileCircleY-(babyEyeDiameter*40/100);
    smileLineX2=smileCirleX+(babyEyeDiameter*1/2);
    smileLineY2=smileLineY1;



    //Speech Bubble

    speechBubbleX=displayWidth*1/5;
    speechBubbleY=displayHeight*1/8;
    speechBubbleDiameter=displayHeight*1/5;

    speechBubbleTriangleX1=displayWidth*15/100;
    speechBubbleTriangleY1=displayHeight*1/5;
    speechBubbleTriangleX2=displayWidth*15/90;
    speechBubbleTriangleY2=displayHeight*15/100;
    speechBubbleTriangleX3=displayWidth*20/90;
    speechBubbleTriangleY3=displayHeight*15/100;

    fill(speechBubbleFill);
    stroke(speechBubbleOutline);
    strokeWeight(mouthOpen*1/20);
    triangle(speechBubbleTriangleX1, speechBubbleTriangleY1, speechBubbleTriangleX2, speechBubbleTriangleY2, speechBubbleTriangleX3, speechBubbleTriangleY3);
    fill(speechBubbleFill);
    stroke(speechBubbleOutline);
    ellipse(speechBubbleX, speechBubbleY, speechBubbleDiameter, speechBubbleDiameter);
    fill(speechColor);
    textAlign(CENTER, TOP);
    textFont(speechFont, 23); //Change the number until it fits
    text(speech, speechBubbleX*73/100, speechBubbleY*1/2, speechBubbleDiameter, speechBubbleDiameter);
  }
  
  
  
  noStroke();
  fill(QuitButton);
  ellipse(leftQuitButtonX, leftQuitButtonY, quitButtonWidth, quitButtonHeight);
  ellipse(rightQuitButtonX, rightQuitButtonY, quitButtonWidth, quitButtonHeight);
  strokeWeight(reset);
  noStroke();

  //FRONT BODY

  noStroke();
  fill(frontBody);
  ellipse( frontBodyX, frontBodyY, frontBodyWidth, frontBodyHeight);
  //FRONT BODY EYE
  fill(frontBodyEyes);
  ellipse(babyLeftEyeX, babyLeftEyeY, babyEyeDiameter, babyEyeDiameter);
  ellipse(babyRightEyeX, babyRightEyeY, babyEyeDiameter, babyEyeDiameter);
  //FRONT BODY SMILE
  fill(frontBodySmileFill);
  stroke(frontBodySmileOutline);
  strokeWeight(mouthOpen*1/34);
  ellipse(smileCirleX, smileCircleY, smileCircleDiameter, smileCircleDiameter);
  strokeWeight(mouthOpen*1/18);
  stroke(mouthLine);
  line(smileLineX1, smileLineY1, smileLineX2, smileLineY2);

  strokeWeight(mouthOpen*23/100);
  stroke(leaf1);
  line(FIRSTbabyLeafX1, FIRSTbabyLeafY1, FIRSTbabyLeafX2, FIRSTbabyLeafY2);
  stroke(leaf2);
  line(SECONDbabyLeafX1, SECONDbabyLeafY1, SECONDbabyLeafX2, SECONDbabyLeafY2);
  stroke(leaf3);
  line(THIRDbabyLeafX1, THIRDbabyLeafY1, THIRDbabyLeafX2, THIRDbabyLeafY2);
  strokeWeight(reset);
  stroke(black);
}//End of quitButton
