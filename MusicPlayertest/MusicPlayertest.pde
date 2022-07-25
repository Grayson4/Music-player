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
  //song1.loop();
}//End setup
//
void draw() {}//End draw
//
void keyPressed() 
{
  //First Play Button
  if ( key=='p' || key=='P' ) song1.play(); 
}//EndkeyPressed
//
void mousePressed() {}//End mousePressed
