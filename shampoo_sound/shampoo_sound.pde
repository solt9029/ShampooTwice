import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
import processing.serial.*;

Serial myPort;
Minim minim;
AudioPlayer glass;
int count = 0;

void setup() {
  myPort = new Serial(this, Serial.list()[0], 9600);
  minim = new Minim(this);
  glass = minim.loadFile("output.wav");
}

void draw() {
}

void serialEvent(Serial p) {
  if (count == 0) {
    count++;
  } else {
    glass.play();
  }
}

void stop()
{
  glass.close();
  minim.stop();
  super.stop();
}