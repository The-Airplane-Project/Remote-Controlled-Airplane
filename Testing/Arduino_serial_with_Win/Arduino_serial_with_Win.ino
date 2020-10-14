void setup() {
    // put your setup code here, to run once:
    Serial.begin(9600);
    }


void loop() {
    // put your main code here, to run repeatedly:
    if (Serial.available() > 0) {
        char c = Serial.read();
        if (c == '1') 
          Serial.write("10");
        else if (c == '2') 
          Serial.write("20");
        else if (c == '3') 
          Serial.write("30");
        else
        Serial.write("Invalid");
    }

}
