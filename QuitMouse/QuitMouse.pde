//Global Varibales
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color yellow=#E9FF00, purple=#BB52CB, resetButtonColour=#FFFFFF, buttonFill;//Not Nightmode friendly colours
//
void setup()  
{ 
  size(500, 500);
  int centreX = width/2;
  int centreY = height/2;
  int centeringButtonWidth = width*1/4;
  int centeringButtonHeight = height*1/4;
  quitButtonX= centreX - centeringButtonWidth ;
  quitButtonY= centreY - centeringButtonHeight ;
  quitButtonWidth= width*1/2;
  quitButtonHeight= height*1/2;
  //Population
}//End setup
//
void draw()  
{
  //Hover-over
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
    buttonFill= yellow;
  } else {
    buttonFill= purple;
  };//End Hover Over
  fill(buttonFill);//2 Colours to start, remember that nightMode adds choice
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(resetButtonColour);
  //Repeating CONSOLE values illiustrating mouseX and mouseY re;taed to a formula, mouse buttons
  //println("X-Value", quitButtonX, "\t", mouseX, "\t", quitButtonX+quitButtonWidth, "\t\t Look at the middle value");
  //println("Y-Value", quitButtonY, "\t", mouseY, "\t", quitButtonY+quitButtonHeight, "\t\t Look at the middle value");
}//End Draw
//
void keyPressed()
{
  if (key=='q'|| key=='Q') exit();
}//End keyPressed
//
void mousePressed()  
{ 
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
}//End mousePressed
//
//End MAIN Program
