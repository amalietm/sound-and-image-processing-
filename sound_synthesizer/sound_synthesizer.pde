
import processing.sound.*;

Waveform waveform;
int waveformSamples = 512;

SawOsc saw; //initiate
LowPass lp;

void setup() {
  size(600, 600);
  
  waveform = new Waveform(this, waveformSamples);
  
  saw = new SawOsc(this);
  lp = new LowPass(this);
  lp.process(saw);
  
  saw.freq(220); //how high the pitch is
  saw.amp(0.4); //how loud
  saw.play();
}

void draw() {
  background(0);
  waveViz();
  saw.freq(map(mouseX, 0, width, 80, 2000)); // frequency left to right
  saw.amp(map(mouseY, height, 0, 0, 1.0)); //volume - bottom lowest and top highest
  waveform.input(saw);
 
  switch(key) {
  case 'f':
    lp.freq(map(mouseX, 0, width, 100, 8000)); // frequency left to right
    break;
  }
  
}
