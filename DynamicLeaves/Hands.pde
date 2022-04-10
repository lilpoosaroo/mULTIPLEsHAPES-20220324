//Global Variables

//

void Hands()
{
  stroke(black);
  strokeWeight(mouthOpen*1/5);
  line(lilhandLeftX1, lilhandLeftY1, lilhandLeftX2, lilhandLeftY2);
  strokeWeight(mouthOpen*1/5);
  line(lilhandRightX1, lilhandRightY1, lilhandRightX2, lilhandRightY2);
  strokeWeight(reset);
  noStroke();
}//End Hands
