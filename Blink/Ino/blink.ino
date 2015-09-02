// Fabian Monge @fmonge


int led = 13;
short int parpadeo = B10000000;

void setup() {                  
   DDRD = B11110000;
}


void loop() {
    PORTD = parpadeo;
    parpadeo = parpadeo >> 1;
    delay(995);
    if(parpadeo == B00001000)
       parpadeo = B10000000;  
}
