float conv(float oldValue, float oldMin, float oldMax, float newMin, float newMax){
  float newValue;
  float newRange;
  float oldRange;
  newRange = newMax - newMin;
  oldRange = oldMax - oldMin;
  newValue = ((oldValue - oldMin) * newRange / oldRange) + newMin;
  return (newValue);
}