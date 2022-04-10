//Global Variables
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float leftEyeLineX1, leftEyeLineY1, leftEyeLineX2, leftEyeLineY2;
float rightEyeLineX1, rightEyeLineY1, rightEyeLineX2, rightEyeLineY2;
float firstboldLineX1, firstboldLineY1, firstboldLineX2, firstboldLineY2;
float secondboldLineX1, secondboldLineY1, secondboldLineX2, secondboldLineY2;
//End global variables

void eyes ()
{
  //Left Eye
  stroke(black);
  strokeWeight(mouthOpen*1/18);
  fill(white);
  ellipse (leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  line(leftEyeLineX1, leftEyeLineY1, leftEyeLineX2, leftEyeLineY2);
  line(rightEyeLineX1, rightEyeLineY1, rightEyeLineX2, rightEyeLineY2);

  strokeWeight(boldLine);
  line(firstboldLineX1, firstboldLineY1, firstboldLineX2, firstboldLineY2);
  line(secondboldLineX1, secondboldLineY1, secondboldLineX2, secondboldLineY2);
  //
  //Right Eye
  ellipse (rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  strokeWeight(reset);
}//End eye code
