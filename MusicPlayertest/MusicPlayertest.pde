import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
AudioPlayer song1;
//
void setup() 
{
  minim = new Minim(this);
  song1 = minim.loadFile("groove.mp3");
  //
}//End setup
//
void draw() {}//End draw
//
void keyPressed() 
{
  //First Play Button
  if ( key=='p' || key=='P' ) song1.play(); 
  //
  int loopNum3 = 2;
  if ( key=='l' || key=='L' ) song1.loop(loopNum3);
}//EndkeyPressed
//
void mousePressed() {}//End mousePressed
