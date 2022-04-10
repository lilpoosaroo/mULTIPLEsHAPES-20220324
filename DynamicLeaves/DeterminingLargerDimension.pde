void DeterminingLargerDimension ()
{
Pic1 = loadImage("italy's flag - 960x640.png");
  if (Pic1Width > Pic1Height) {
    largerPic1Dimension=Pic1Width;
    smallerPic1Dimension=Pic1Height;
    widthPic1Larger=true;
  } else {
    largerPic1Dimension=Pic1Height;
    smallerPic1Dimension=Pic1Width;
    heightPic1Larger=true;
  }
  println(largerPic1Dimension, smallerPic1Dimension);
}//End Aspect Ratio calculations
