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
}//End draw()

void keyPressed() {
  if (key == 'p') {
    if ( song1.isPlaying() ) {
    song1.pause();
  } else if ( song1.position() >= song1.length()- 1000) {
    song1.rewind();
    song1.play();
    } else {song1.play();}
  }
}
  
   


//End keyPressed()

void mousePressed() {
  powerbuttonmousepressed();
}//End mousePressed()
