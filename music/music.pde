import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



//Libaries


//Global Variables
Minim minim; //creates object to access all functions 
AudioPlayer song1; //creates "play list" variable holding extensions WAV, AIFF, AU, SND and MP3

void setup() {
  fullScreen();
  
  population();
  textSetup();
  //
  minim = new Minim(this);
  song1 = minim.loadFile("Music/Dinosaur, use screech.mp3");
  //song1.play(1);
}//End setup()

void draw() {
  powerbuttondraw();
  //
  if (song1.isLooping()) {
    
    println("Is Looping");
    println(song1.loopCount());
  }
}//End draw()

void keyPressed() {
  if (key == 'p') {
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() >= song1.length()- 500) {
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }

  //Play-Stop
  if (key == 's') {
    if (song1.isPlaying() ) {
      song1.pause();
      song1.rewind();
    } else {
      song1.rewind();
    }
  }
  //FastForward
  if (key == 'a') song1.skip(1000);
  //fast rewind
  if (key == 'r')song1.skip(-1000); 
  //Mute
  if (key == 'm') {
    if (song1.isMuted()) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }
  //Loop Function
  int loopIntNum= 2;//Loop Hardcode
  if (key == 'l' || key == 'L') song1.loop(loopIntNum);//Play Button
}//End keyPressed()




//End keyPressed()

void mousePressed() {
  powerbuttonmousepressed();
}//End mousePressed()
