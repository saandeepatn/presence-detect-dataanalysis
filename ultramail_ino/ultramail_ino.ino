
int vcc = 2; //attach pin 2 to vcc
int trig = 3; // attach pin 3 to Trig
int echo = 4; //attach pin 4 to Echo
int gnd = 5; //attach pin 5 to GND
int tonePin = 8; 
int t1=15;
int minSecsBetweenEmails = 10; // 1 min
long lastSend = -minSecsBetweenEmails * 1000l;
void setup() {

pinMode (vcc,OUTPUT);
pinMode (gnd,OUTPUT);
// initialize serial communication:
Serial.begin(9600);

}
void loop()
{
digitalWrite(vcc, HIGH);
// establish variables for duration of the ping,
// and the distance result in inches and centimeters:
long duration, inches, cm;

// The PING))) is triggered by a HIGH pulse of 2 or more microseconds.
// Give a short LOW pulse beforehand to ensure a clean HIGH pulse:
pinMode(trig, OUTPUT);
digitalWrite(trig, LOW);
delayMicroseconds(2);
digitalWrite(trig, HIGH);
delayMicroseconds(5);
digitalWrite(trig, LOW);

// The same pin is used to read the signal from the PING))): a HIGH
// pulse whose duration is the time (in microseconds) from the sending
// of the ping to the reception of its echo off of an object.
pinMode(echo,INPUT);
duration = pulseIn(echo, HIGH);

// convert the time into a distance
inches = microsecondsToInches(duration);
cm = microsecondsToCentimeters(duration);
//t2=cm;
//Serial.print(inches);
//Serial.print("in, ");
//Serial.print(cm);
//Serial.print("cm");
//Serial.println("%d in, %d cm",inches,cm);
//if((t1-t2)>3)
//  Serial.println("Movement");

if(cm<10)
{
  long now = millis();
  tone(tonePin,5000, 200);
  if (now > (lastSend + minSecsBetweenEmails * 1000l))
  {  
    Serial.println("MOVEMENT");
    lastSend = now; 
    } 
    else 
    {   
    Serial.println("Too soon");
    }
  }
  //Serial.println("MOVEMENT");

delay(400);
}

long microsecondsToInches(long microseconds)
{
// According to Parallax's datasheet for the PING))), there are
// 73.746 microseconds per inch (i.e. sound travels at 1130 feet per
// second). This gives the distance travelled by the ping, outbound
// and return, so we divide by 2 to get the distance of the obstacle.
// See: http://www.parallax.com/dl/docs/prod/acc/28015-PI...
return microseconds / 74 / 2;
}

long microsecondsToCentimeters(long microseconds)
{
// The speed of sound is 340 m/s or 29 microseconds per centimeter.
// The ping travels out and back, so to find the distance of the
// object we take half of the distance travelled.
return microseconds / 29 / 2;
}