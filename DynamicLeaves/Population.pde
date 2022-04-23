void population ()
{
  //variable population, defining what a variable is: ALWAYS IN VOID SETUP
  smallerDisplayDimension = displayHeight; //HEIGHT IS ALWAYS THE SMALLER DIMENSION IN LANDSCAPE MODE
  reset = smallerDisplayDimension/smallerDisplayDimension;
  rectFaceX = (displayWidth*1/2) - (smallerDisplayDimension*1/2); 
  rectFaceY = displayHeight*0; 
  rectFaceDisplayWidth = smallerDisplayDimension; //Square shape: needs the same dimension
  rectFaceDisplayHeight = smallerDisplayDimension; //Sqaure shape: needs the same dimension
  faceX = displayWidth*1/2;
  faceY = displayHeight*1/2; 
  faceDiameter = displayHeight;
  //
  
  //Eyes
  leftEyeX = displayWidth*3/8;
  rightEyeX = displayWidth*5/8; 
  leftEyeY = displayHeight*1/2;
  rightEyeY = leftEyeY; 
  eyeDiameter = smallerDisplayDimension*1/16;

  leftEyeLineX1= leftEyeX-(eyeDiameter*20/50); 
  leftEyeLineY1= leftEyeY-(eyeDiameter*1/4);
  leftEyeLineX2= leftEyeX+(eyeDiameter*20/50); 
  leftEyeLineY2= leftEyeY+(eyeDiameter*1/4);


  rightEyeLineX1=rightEyeX+(eyeDiameter*20/50);
  rightEyeLineY1= rightEyeY-(eyeDiameter*1/4); 
  rightEyeLineX2=rightEyeX-(eyeDiameter*20/50);
  rightEyeLineY2=rightEyeY+(eyeDiameter*1/4);

  firstboldLineX1= leftEyeX*98/100; 
  firstboldLineY1=leftEyeY-(eyeDiameter*2/5);
  firstboldLineX2=leftEyeX*105/100;
  firstboldLineY2=leftEyeY;


  secondboldLineX1=rightEyeX*203/200;
  secondboldLineY1=firstboldLineY1;
  secondboldLineX2=rightEyeX*195/200;
  secondboldLineY2=firstboldLineY2;


  boldLine=smallerDisplayDimension*1/27;


  //MOUTH
  mouthX = faceX;
  mouthY = faceY*105/100;
  mouthOpen = smallerDisplayDimension*1/8;

  smileX1=mouthX-(eyeDiameter*1/4); 
  smileY1=mouthY; 
  smileX2=mouthX+(eyeDiameter*1/4);
  smileY2=smileY1;

  smileX3=mouthX*97/100;
  smileY3=mouthY-(eyeDiameter*1/5); 
  smileX4=mouthX*103/100;
  smileY4=smileY3;


  //Blush
  leftXBlush1a= leftEyeX-(eyeDiameter*1/2);
  leftYBlush1a=leftEyeY+(eyeDiameter);
  leftXBlush1b=leftEyeX-(eyeDiameter*1/4);
  leftYBlush1b= leftEyeY+(eyeDiameter*5/8);

  leftXBlush2a=(eyeDiameter*1/4)+leftXBlush1a;
  leftYBlush2a=leftYBlush1a;
  leftXBlush2b=(eyeDiameter*1/4)+leftXBlush1b;
  leftYBlush2b=leftEyeY+(eyeDiameter*5/8);

  leftXBlush3a=(eyeDiameter*1/4)+leftXBlush2a; 
  leftYBlush3a=leftYBlush1a;
  leftXBlush3b=(eyeDiameter*1/4)+leftXBlush2b;
  leftYBlush3b=leftYBlush1b;


  rightBlush2XA=rightEyeX+(eyeDiameter*1/4);
  rightBlush2YA= leftYBlush1a;
  rightBlush2XB=rightEyeX;
  rightBlush2YB=leftYBlush1b;

  rightBlush1XA=rightBlush2XB;
  rightBlush1YA=leftYBlush1a;
  rightBlush1XB= rightEyeX-(eyeDiameter*1/4);
  rightBlush1YB=leftYBlush1b;

  rightBlush3XA=rightEyeX+(eyeDiameter*1/2);
  rightBlush3YA= rightBlush2YA;
  rightBlush3XB= rightBlush2XA;
  rightBlush3YB= rightBlush1YB;

  //APRON rectangle

  rectApronX=leftEyeX;
  rectApronY=leftEyeY+(eyeDiameter*3); 
  rectApronWidth=rightEyeX-leftEyeX;
  rectApronHeight= smallerDisplayDimension*1/6;
  titleFont = createFont("Calibri Bold Italic", 80);


  //APRON lining
  circleApronDiameter=rectApronWidth*1/8;
  circle1AX=rectApronX;
  circle1AY=rectApronY;
  circle1BX=rectApronX;
  circle1BY=rectApronY+(rectApronHeight*1/3);
  circle1CX=rectApronX;
  circle1CY=circle1BY+(rectApronHeight*1/3);

  circle2AX=rectApronX;
  circle2AY=rectApronY+rectApronHeight;
  circle2BX=circle2AX+circleApronDiameter;
  circle2BY=circle2AY;
  circle2CX=circle2BX+circleApronDiameter;
  circle2CY=circle2AY;
  circle2DX=circle2CX+circleApronDiameter;
  circle2DY=circle2AY;
  circle2EX=circle2DX+circleApronDiameter;
  circle2EY=circle2AY;
  circle2FX=circle2EX+circleApronDiameter;
  circle2FY=circle2AY;
  circle2GX=circle2FX+circleApronDiameter;
  circle2GY=circle2AY;
  circle2HX= circle2GX+circleApronDiameter;
  circle2HY=circle2AY;


  circle3AX=rectApronX+rectApronWidth;
  circle3AY=rectApronY+rectApronHeight;
  circle3BX=circle3AX;
  circle3BY=circle3AY-circleApronDiameter;
  circle3CX=circle3AX;
  circle3CY=circle3BY-circleApronDiameter;

  circle4AX=rectApronX+rectApronWidth;
  circle4AY=rectApronY;

  //APRON strings
  stringLeftX=rectFaceX+(circleApronDiameter*1/2);
  stringLeftY=circle1AY-(circleApronDiameter*1/2);
  stringLeftWidth=(rectApronWidth*5/6)+(circleApronDiameter*4/5);
  stringLeftHeight=circleApronDiameter*1/2;

  stringMidX=smileX1-(circleApronDiameter*107/100);
  stringMidY=stringLeftY;
  stringMidWidth=(rectApronWidth*1/3);
  stringMidHeight=stringLeftHeight;

  stringRightX=stringMidX+(rectApronWidth*1/3);
  stringRightY=stringLeftY;
  stringRightWidth=stringLeftWidth;
  stringRightHeight=stringLeftHeight;



  //HANDS
  lilhandLeftX1=displayWidth*46/200;
  lilhandLeftY1= stringLeftY;
  lilhandLeftX2= stringLeftX-(circleApronDiameter*1/7);
  lilhandLeftY2=stringLeftY+(circleApronDiameter*1/2);


  lilhandRightX1=displayWidth*154/200;
  lilhandRightY1=lilhandLeftY1;
  lilhandRightX2=displayWidth*154/200;
  lilhandRightY2=lilhandLeftY2;
  
  
   //BACK OF BODY

  leftQuitButtonX=displayWidth*1/12;
  leftQuitButtonY=smallerDisplayDimension*1/4;
  rightQuitButtonX= displayWidth*1/8;
  rightQuitButtonY=leftQuitButtonY;
  quitButtonWidth=eyeDiameter*35/20;
  quitButtonHeight=eyeDiameter*2;

  //  FIRSTbabyLeafX1=(displayWidth*1/10)+(quitButtonWidth*8/100);
  FIRSTbabyLeafX1=(displayWidth*1/10)+(quitButtonWidth*8/100);
  FIRSTbabyLeafY1=(smallerDisplayDimension*1/12)+(quitButtonHeight);
  FIRSTbabyLeafX2=displayWidth*1/13;
  FIRSTbabyLeafY2=smallerDisplayDimension*1/6;

  SECONDbabyLeafX1= FIRSTbabyLeafX1;
  SECONDbabyLeafY1=FIRSTbabyLeafY1;
  SECONDbabyLeafX2=displayWidth*1/10;
  SECONDbabyLeafY2=FIRSTbabyLeafY2;

  THIRDbabyLeafX1=FIRSTbabyLeafX1;
  THIRDbabyLeafY1=FIRSTbabyLeafY1;
  THIRDbabyLeafX2=displayWidth*1/8;
  THIRDbabyLeafY2=FIRSTbabyLeafY2;


  //FRONT OF BODY

  frontBodyX=leftQuitButtonX+(quitButtonWidth*1/3); 
  frontBodyY=smallerDisplayDimension*1/2;
  frontBodyWidth=quitButtonWidth*5/3;
  frontBodyHeight=quitButtonHeight*105/100;

  babyLeftEyeX=frontBodyX;
  babyLeftEyeY=frontBodyY-(frontBodyHeight*1/8);
  babyRightEyeX=frontBodyX+(frontBodyWidth*1/4);
  babyRightEyeY=babyLeftEyeY;
  babyEyeDiameter=eyeDiameter*1/4;


  smileCirleX=babyRightEyeX*92/100;
  smileCircleY=babyLeftEyeY*105/100;
  smileCircleDiameter=babyEyeDiameter;

  smileLineX1=smileCirleX-(babyEyeDiameter*1/2);
  smileLineY1=smileCircleY-(babyEyeDiameter*40/100);
  smileLineX2=smileCirleX+(babyEyeDiameter*1/2);
  smileLineY2=smileLineY1;
  
  
  //Speech Bubble
  speechFont= createFont("Bahnschrift", 50);
}//End population
