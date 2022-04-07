//Global Variables, variable that runs in the ain program and all the sub programs
int reset, smallerDisplayDimension, mouthOpen; 
float rectFaceX, rectFaceY, rectFaceDisplayWidth, rectFaceDisplayHeight; 
float faceX, faceY, faceDiameter; 

float rectLeftEyeX, rectLeftEyeY, rectRightEyeX, rectRightEyeY, rectEyeDisplayWidth, rectEyeDisplayHeight;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;

float rectNoseX, rectNoseY, rectNoseDisplayWidth, rectNoseDisplayHeight;
float xNose1, yNose1, xNose2, yNose2, xNose3, yNose3;

float rectMouthX, rectMouthY, rectMouthDisplayWidth, rectMouthDisplayHeight;
float mouthX1, mouthY1, mouthX2, mouthY2;
//
void setup ()
{

fullScreen (); //it is a question dont put in numbers
//
DisplayGeometryDisplayOrientation ();
//
population ();
//
face ();
//
}//END setup
//
void draw ()
{
//
eyes ();
//
nose();
//
mouth ();
//
measle ();
//

}//end draw

//
void keyPressed (){}//End Keypressed
//
void mousePressed (){}//End mousePressed
//
//End Main Program 
