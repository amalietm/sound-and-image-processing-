void waveViz() {
  background(0);
  stroke(255);
  strokeWeight(2);
  noFill();

  // Perform the analysis
  waveform.analyze();

  // draw a waveform
  beginShape();
  for (int i = 0; i < waveformSamples; i++) {
    vertex(
      map(i, 0, waveformSamples, 0, width), 
      map(waveform.data[i], -1, 1, 0, height)
      );
  }
  endShape();
}
