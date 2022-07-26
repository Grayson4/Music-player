import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
AudioPlayer song1;
 AudioMetaData songMetaData1;
//
PFont titleFont;
color black=#000000, purple=#8C14DE, resetWhite=#FFFFFF;
float titleX, titleY, titleWidth, titleHeight;
//
void setup() 
{
  size (500,400);//Landscape
  //
  minim = new Minim(this);
  song1 = minim.loadFile("groove.mp3");
  songMetaData1 =  song1.getMetaData();
  //
  //Population
  titleX = width*1/4;
  titleY = height*0;
  titleWidth = width*1/2;
  titleHeight = height*1/10;
  //
  titleFont = createFont ("Arial", 55);
  //
}//End setup
//
void draw() 
{
  if ( song1.isLooping()&& song1.loopCount()!=-1 ) println("there are", song1.loopCount(), "loops left.");
  if ( song1.isLooping()&& song1.loopCount()==-1 ) println("Looping Infinity");
  if ( song1.isPlaying() && !song1.isLooping() ) println("Play Once");
  println("Song position", song1.position(), "song Length", song1.length() );
  //
  background (black);
  rect(titleX, titleY, titleWidth, titleHeight);
  fill(purple);
  textAlign(CENTER,CENTER);
  textFont(titleFont, 30);
  text(songMetaData1.title(), titleX, titleY, titleWidth, titleHeight);
  fill(resetWhite);
  //
}//End draw
//
void keyPressed() 
{
  //First Play Button
  //if ( key=='p' || key=='P' ) song1.play(); 
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
  //
  if ( key=='i' || key=='I' ) song1.loop();
  if ( key>= '2' || key=='0') println("I do not loop that much, press i for infinite loop");
  //
  if ( key=='m' || key=='M' ) {//Mute Button
    if  ( song1.isMuted()) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }//End Mute Button
  //
  if (key=='f' || key=='F') song1.skip(1000);
  if (key=='r' || key=='R') song1.skip(-1000);
  //
  if ( key=='s' || key=='S' ) {//stop button
    if (song1.isPlaying()) {
      song1.pause();
      song1.rewind();
    } else {//song is not playing
      song1.rewind();
    }
  }//End stop Button
  //
  if ( key=='p' || key=='P' ) {//PAUSE Button
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() >= song1.length() - song1.length()*1/5 ) {
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }//End PAUSE Button
}//EndkeyPressed
//
void mousePressed() {
}//End mousePressed
//
//End MAIN Program
