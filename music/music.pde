import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



//Libaries


//Global Variables
Minim minim; //creates object to access all functions 
int numberofsongs= 3;
AudioPlayer[] song= new AudioPlayer[numberofsongs]; //creates "play list" variable holding extensions WAV, AIFF, AU, SND and MP3
int currentsong = numberofsongs - numberofsongs;
void setup() {
  fullScreen();

  population();
  textSetup();
  //
  minim = new Minim(this);
  song [currentsong] = minim.loadFile("Music/Dinosaur, use screech.mp3");
  song[currentsong+1] = minim.loadFile("Music/Y2Mate.is - Good Ending Theme [Extended] - Five Nights at Freddys 3-IHRM5A6bXFQ-160k-1638669252949.mp3");
  song[currentsong+2] = minim.loadFile("Music/Y2Mate.is - WhatsApp CarDrip Car (HIGHEST QUALITY)-SBo6Z26w5T8-160k-1642536104601.mp3");
  //song[currentsong].play(1);
}//End setup()

void draw() {
  powerbuttondraw();
  //
  /*//if (song[currentsong].isLooping()) {
   
   println("Is Looping");
   println(song[currentsong].loopCount());
   
   }
   */
}//End draw()

void keyPressed() {
  // =currentsong+1,+=1
  if ( key == 'l' || key == 'L') song[currentsong].loop(); //Parameter is Parameter is number of repeats




  if (key =='n' || key == 'N') {
    if (song[currentsong].isPlaying() ) {
      song[currentsong].pause();
      song[currentsong].rewind();
      //
      ArrayFixError();
      //
      song[currentsong].play();
    } else {
      song[currentsong].rewind();
      ArrayFixError();
    }
  }
  if (key == 'b'||key=='B') {
    if (song[currentsong].isPlaying()) {
      song[currentsong].pause();
      song[currentsong].rewind();
      //
      ArrayFixError2();
      //
      song[currentsong].play();
    } else {
      song[currentsong].rewind();
      ArrayFixError2();
  }
  }
//End keyPressed()

if (key == 'p') {
 if ( song[currentsong].isPlaying() ) {
 song[currentsong].pause();
 } else if ( song[currentsong].position() >= song[currentsong].length()- 500) {
 song[currentsong].rewind();
 song[currentsong].play();
 } else {
 song[currentsong].play();
 }
 }
 
 //Play-Stop
 if (key == 's') {
 if (song[currentsong].isPlaying() ) {
 song[currentsong].pause();
 song[currentsong].rewind();
 } else {
 song[currentsong].rewind();
 }
 }
 //FastForward
 if (key == 'a') song[currentsong].skip(1000);
 //fast rewind
 if (key == 'r')song[currentsong].skip(-1000); 
 //Mute
 if (key == 'm') {
 if (song[currentsong].isMuted()) {
 song[currentsong].unmute();
 } else {
 song[currentsong].mute();
 }
 }
 //Loop Function
 int loopIntNum= 2;//Loop Hardcode
 if (key == 'l' || key == 'L') song[currentsong].loop();//Play Button
 
}


//End keyPressed()

void mousePressed() {
  powerbuttonmousepressed();
}//End mousePressed()
