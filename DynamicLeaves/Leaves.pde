void Leaves ()

{

//Leaves
float leafX1 =random(displayWidth*3/8, displayWidth*5/8);
float leafY1 = random(smallerDisplayDimension*1/50,smallerDisplayDimension*1/20 );
float leafX2= displayWidth*1/2;
float leafY2=smallerDisplayDimension*1/8;
Boolean nightMode = false; //note: IF-ELSE statement is similiar to ternary operator. 

color leaf = ( nightMode == false) ? color( random(26,111), random(120,160), random(0,17)): color(26, 120, 0); //ternary operator
stroke(leaf);
strokeWeight( random(mouthOpen*1/4,mouthOpen*1/2));
line(leafX1, leafY1,leafX2, leafY2);
strokeWeight(reset);
}//End measle code 
