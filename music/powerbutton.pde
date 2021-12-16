color resetwhite=#FFFFFF, yellow=#FFF703, cyan=#5FE7EA, buttoncolor;
float powerbuttonX, powerbuttonY, powerbuttonWidth, powerbuttonHeight;
String powerButton = "power";
//
void powerbutton() {
  powerbuttonX=displayWidth*29/32;
  powerbuttonY=displayHeight*0/16;
  powerbuttonWidth=displayWidth*3/32;
  powerbuttonHeight= displayHeight*1/16;
 
}//End powerbutton()
//
void powerbuttondraw() {
  //Hoverover
  if (mouseX>powerbuttonX && mouseX<powerbuttonX+powerbuttonWidth && mouseY>powerbuttonY && mouseY<powerbuttonY+powerbuttonHeight) {
    buttoncolor=cyan;
   hoveroverbuttonfill();
  } else {
    buttoncolor=yellow;
    hoveroverbuttonfill();
  }
  //Text
  textCode(powerButton, width*3/100, powerbuttonX, powerbuttonY, powerbuttonWidth, powerbuttonHeight);
}//End powerbuttondraw()
//
void powerbuttonmousepressed() {
  if (mouseX>powerbuttonX && mouseX<powerbuttonX+powerbuttonWidth && mouseY>powerbuttonY && mouseY<powerbuttonY+powerbuttonHeight) exit();
}//End powerbuttonmousepressed()
//
void hoveroverbuttonfill() {
fill(buttoncolor);
    noStroke();
     rect(powerbuttonX, powerbuttonY, powerbuttonWidth, powerbuttonHeight);
     stroke(1);
     fill(resetwhite);
}//End hoveroverbuttonfill()
