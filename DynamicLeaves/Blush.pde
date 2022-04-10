//Global Variables
float leftXBlush1a, leftYBlush1a, leftXBlush1b, leftYBlush1b; 
float leftXBlush2a, leftYBlush2a, leftXBlush2b, leftYBlush2b;
float leftXBlush3a, leftYBlush3a, leftXBlush3b, leftYBlush3b;
float rightBlush1XA, rightBlush1YA, rightBlush1XB, rightBlush1YB;
float rightBlush2XA, rightBlush2YA, rightBlush2XB, rightBlush2YB;
float rightBlush3XA, rightBlush3YA, rightBlush3XB, rightBlush3YB;
//

void blush ()
{
  strokeWeight(mouthOpen*1/23);
  line(leftXBlush1a, leftYBlush1a, leftXBlush1b, leftYBlush1b);
  line(leftXBlush2a, leftYBlush2a, leftXBlush2b, leftYBlush2b);
  line(leftXBlush3a, leftYBlush3a, leftXBlush3b, leftYBlush3b);

  line(rightBlush1XA, rightBlush1YA, rightBlush1XB, rightBlush1YB);
  line(rightBlush2XA, rightBlush2YA, rightBlush2XB, rightBlush2YB);
  line(rightBlush3XA, rightBlush3YA, rightBlush3XB, rightBlush3YB);
  strokeWeight(reset);
}//End blush code
