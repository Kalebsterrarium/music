//Libaries
//Global Variables
//Minim minim; //creates object to access all functions 
//AudioPlayer song1; //creates "play list" variable holding extensions WAV, AIFF, AU, SND and MP3

void setup() {
  fullScreen();
  population();
  textSetup();
  //
  //minim = new Minim(this);
  //song1 = minim.loadFile("");
  //song1.play();
  
}//End setup()

void draw() {
   powerbuttondraw();
}//End draw()

void keyPressed() {
}//End keyPressed()

void mousePressed() {
  powerbuttonmousepressed();
}//End mousePressed()
