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
  song1 = minim.loadFile("Dinosaur, use screech.mp3");
  song1.play(1);
  
}//End setup()

void draw() {
   powerbuttondraw();
}//End draw()

void keyPressed() {
}//End keyPressed()

void mousePressed() {
  powerbuttonmousepressed();
}//End mousePressed()
