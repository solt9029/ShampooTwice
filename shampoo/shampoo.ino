int prevValue = 1000;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  int value = analogRead(0);
  if (value > 1015 && prevValue <= 1015) {
    Serial.write(1);
  }
  prevValue = value;
  delay(1000);
}
