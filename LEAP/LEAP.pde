//Déclaration de variables
float music=0;
float music2=0;
float var1=0;
float var2=0;
float var3=0;
float var4=0;

int var1i = 0;
int var2i = 0;
int var3i = 0;

PImage img;


//Importation des librairies
import ddf.minim.*;
Minim minim;
AudioPlayer player;

import de.voidplus.leapmotion.*;
LeapMotion leap;


//SETUP
void setup()
{
  fullScreen(1);
  minim = new Minim(this);
  player = minim.loadFile("Norville - The Rules.mp3", width);
  player.loop();
  leap = new LeapMotion(this);
  img = loadImage("norville2.jpg");

}


//Boucle DRAW

void draw()
{
  background(0);
  stroke( 255 );
  strokeWeight(var2);
  
  tint(music2*5,music2*5,music2*5);
  image(img,0,0);

for(int i = width/4; i < width/4*3; i=i+var1i+2)
  {
    point(i,height/4+music2);
    music = player.left.get(i);
    music2 = conv(music, -1, 1, -var3, var3);
  }
  for(int i = width/4; i < width/4*3; i=i+var1i+2)
  {
    point(i,height/4*3-music2);
    music = player.left.get(i);
    music2 = conv(music, -1, 1, -var3, var3);
  }
  for(int i = height/4; i < height/4*3; i=i+var1i+2)
  {
    point(width/4+music2,i);
    music = player.left.get(i);
    music2 = conv(music, -1, 1, -var3, var3);
  }
  for(int i = height/4; i < height/4*3; i=i+var1i+2)
  {
    point(width/4*3-music2,i);
    music = player.left.get(i);
    music2 = conv(music, -1, 1, -var3, var3);
  }
  
    for (Hand hand : leap.getHands ()) 
  {
    float   handRoll           = hand.getRoll();
    float   handPinch          = hand.getPinchStrength();
    PVector handStabilized     = hand.getStabilizedPosition();
    
    //background(0);
    
    //Visualisation des datas
    text( "handRoll     " + handRoll + ".",20,60);
    text( "handPinch     " + handPinch + ".",20,80);
    text( "handStabilized.y       " + handStabilized.y + ".",20,100);

    var1 = conv(handRoll, -180, 180, 0, 20);
    var2 = conv(handPinch, 0, 1, 40, 1); 
    var3 = conv(handStabilized.y, 600, -200, 0, height);
    
    text( "var1     " + var1 + ".",20,160);
    text( "var2     " + var2 + ".",20,180);
    text( "var3       " + var3 + ".",20,200);

    var1i = int(var1);
    var2i = int(var2);
    var3i = int(var3);

   //var1 = conv(handRoll, -180, 180, 0, 20);
   // var2 = conv(handGrab, 0, 1, 0, height); 
   // var3 = conv(handStabilized.y, 600, -200, 0, 50);

    
  }
  
}