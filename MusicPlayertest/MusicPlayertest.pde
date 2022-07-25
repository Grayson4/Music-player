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
  //if ( key=='p' || key=='P' ) song1.play(); 
  //
  //
  println(key);
  if (key=='1' || key=='9') {
    if (key=='1') println("Looping Once");
    if (key=='9') println("Looping 9 times");
    String keystr = String.valueOf(key);
    println("Number of Repeats is", keystr);
    int loopNum = int(keystr);
    song1.loop(loopNum);
  }//End LOOP FUnctions
  
  
  
  /*int loopNum3 = 2;
  if ( key=='l' || key=='L' ) song1.loop(loopNum3)*/
}//EndkeyPressed
//
void mousePressed() {}//End mousePressed
