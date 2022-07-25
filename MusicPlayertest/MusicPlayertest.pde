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
void draw() 
{
  if ( song1.isLooping()&& song1.loopCount()!=-1 ) println("there are", song1.loopCount() ,"loops left.");
  if ( song1.isLooping()&& song1.loopCount()==-1 ) println("Looping Infinity");
  if ( song1.isPlaying() && !song1.isLooping() ) println("Play Once");
}//End draw
//
void keyPressed() 
{
  //First Play Button
  if ( key=='p' || key=='P' ) song1.play(); 
  //
  //
  println(key);
  if (key=='1' ) {
    if (key=='1') println("Looping Once");
    String keystr = String.valueOf(key);
    println("Number of Repeats is", keystr);
    int loopNum = int(keystr);
    song1.loop(loopNum);
  }//End LOOP FUnctions
  if ( key=='i' || key=='I' ) song1.loop();
  if ( key>= '2' || key=='0') println("I do not loop that much, press i for infinite loop");
  //
  if ( key=='m' || key=='M' ) {
    if  ( song1.isMuted()) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }//End Mute Button
  /*int loopNum3 = 2;
  if ( key=='l' || key=='L' ) song1.loop(loopNum3)*/
}//EndkeyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN Program
