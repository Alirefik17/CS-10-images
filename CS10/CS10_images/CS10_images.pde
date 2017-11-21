PImage[] pic = new PImage[3]; //Array; .length is "3"
float imageX = 860, imageY = 529;
float scaleX, scaleY, scale;
float imageXscaled;
float imageYscaled;

void setup() {
  size(600, 600); //Similar to our rect()
  float rectWidth = width, rectHeight = height; //width and hieght must be called after size
  //pic[0] = loadImage("civic.jpg"); //Thumbnail 295 x 194
  pic[1] = loadImage("challenger.jpg"); //860 x 529, see variables above
  //pic[2] = loadImage("gtr.jpg");

  //Scale: rect / image
  scaleX = rectWidth / imageX;
  println ("ScaleX: " + scaleX);
  scaleY = rectHeight / imageY;
  println ("ScaleY: " + scaleY);

  //Pick the smallest scale, always!
  if ( scaleX < scaleY ) {
    scale = scaleX;
  } else {
    scale = scaleY;
  }

  //Scale the image dimensions
  imageXscaled = imageX * scale;
  imageYscaled = imageY * scale;

  if (imageXscaled > rectWidth | imageYscaled > rectHeight) {
    while ( imageXscaled > rectWidth | imageYscaled > rectHeight ) {
      if (imageXscaled <= rectWidth) { 
        imageX = imageXscaled; //Rewrites the origonal imageX dimension
      } else {
        float i = 1.000;
        while (imageXscaled > rectWidth) {
          //scaleXtest = scaleXtest * i;
          i = i - 0.005;
          imageXscaled = imageXscaled * i;
        }
        imageX = imageXscaled;
      }
      if (imageYscaled <= rectHeight) {
        imageY = imageYscaled;
      } else {
        float i = 1.000;
        while (imageYscaled > rectHeight) {
          i = i - 0.005;
          imageYscaled = imageYscaled * i;
        }
        imageY = imageYscaled;
      }
    }
    imageX = imageXscaled; 
    imageY = imageYscaled;
  } else {
    imageX = imageXscaled; 
    imageY = imageYscaled;
  }
  image(pic[1], 0, height*0/3, imageX, imageY);
}

//void draw() {}

//void mousePressed() {}

//void keyPressed() {}

//void GUI_Setup();

//void quitButton() {}

//float fontCalculator() {}

//void printText() {}