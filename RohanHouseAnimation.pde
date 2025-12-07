// Rohan Bhanot May 3 2022
// ICS2O1
// House Animation
// Purpose: Taking original colour house program and adding moving objects. 

// Variable Declarations

//car
float x=0.0;
//blimp
float x2=0.0;
//blimp text
float x3=0.0;
//chimney smoke
float y2=0.0;
//1st apple
float y=0.0;
//2nd apple
float y3=0.0;
//3rd apple
float y4=0.0;
//text
String s1 = "ROHAN";  

// Setup Before The Loop

void setup(){
size(640,480);
}

// Infinite Loop

void draw(){
background(153,255,255);

// Regular Object (SUN added before blimp to add to the movement effect)

//sun
fill(255,255,0);
ellipse(640,0,200,200);

// Moving Object (BLIMP added after sun to add to the movement effect)

{
//blimp
x2=x2+0.5;
//carrier
fill(143,148,150);
rect(x2+40,60,60,20);
//wings
fill(239,234,232);
triangle(x2+20,10,x2+60,50,x2+20,80);
//full blimp
fill(11,85,144);
ellipse(x2+70,45,100,50);
if(x2>640){
x2=0.0;
}
}

// Moving Object (BLIMP TEXT added after blimp to add to the movement effect)

{
//blimp text
x3=x3+0.5;
textSize(20);
fill(251,255,0);
text(s1,x3+35,52.5);
if(x3>640){
x3=0.0;
}
}

// Moving Object (APPLES added before tree to add to the movement effect)

{
y=y+0.4;
//stem
fill(62,151,0);
rect(444,y+170,2.5,10);
rect(544,y+170,2.5,10);
//apple
fill(238,5,5);
ellipse(445,y+185,20,20);
ellipse(545,y+185,20,20);
if(y>155){
y=0.0;
}
}

{
y3=y3+0.6;
//stem
fill(62,151,0);
rect(414,y3+160,2.5,10);
rect(574,y3+160,2.5,10);
//apple
fill(238,5,5);
ellipse(415,y3+175,20,20);
ellipse(575,y3+175,20,20);
if(y3>165){
y3=0.0;
}
}

{
y4=y4+0.8;
//stem
fill(62,151,0);
rect(434,y4+150,2.5,10);
rect(554,y4+150,2.5,10);
//apple
fill(238,5,5);
ellipse(435,y4+165,20,20);
ellipse(555,y4+165,20,20);
if(y4>175){
y4=0.0;
}
}

// Moving Object (CHIMNEY SMOKE added before chimney to add to the movement effect)

{
//chimney smoke
y2=y2+0.5;
fill(220,220,220,155); //155 is the transparency setting.
ellipse(320,y2+40,30,30);
ellipse(330,y2+20,40,40);
y2--;
if(y2==-60){
y2=0.0;
}
}

// Regular Objects (NO MOVEMENT)

noStroke();
//grass
fill(0,255,0);
rect(0,350,640,130);
//driveway
fill(192,192,192);
quad(180,350,260,350,230,480,150,480);
//clouds
fill(255,255,255,180); //180 is the transparency setting.
ellipse(20,70,100,100);
ellipse(70,60,70,70);
ellipse(100,40,50,50);
ellipse(180,60,50,50);
ellipse(240,40,70,70);
ellipse(140,80,50,50);
ellipse(380,40,50,50);
ellipse(420,40,60,60);
//house
fill(255,204,153);
rect(100,130,240,220);
//chimney
fill(105,105,105);
rect(300,50,40,60);
//roof
fill(139,69,19);
triangle(220,20,70,130,370,130);
//door
fill(139,69,19);
rect(180,240,80,110);
//tree
fill(139,69,19);
rect(470,150,40,200);
//left window
fill(240,255,255,170); //170 is the transparency setting.
rect(120,150,80,60);
//right window
fill(240,255,255,170); //170 is the transparency setting.
rect(240,150,80,60);
//door knob
fill(205,133,63);
ellipse(240,300,20,20);
//leaves
fill(0,255,0,300); //300 is the transparency setting.
ellipse(490,130,70,70);
fill(0,255,0,165); //165 is the transparency setting.
ellipse(450,130,70,70);
ellipse(530,130,70,70);
ellipse(420,150,80,80);
ellipse(560,150,80,80);
fill(0,255,0,130); //130 is the transparency setting.
ellipse(490,90,70,70);
ellipse(450,90,70,70);
ellipse(530,90,70,70);
ellipse(490,50,60,60);
//road
fill(23,25,28);
rect(0,450,640,50);
//stable apples
fill(238,5,5);
ellipse(435,75,20,20);
ellipse(470,90,20,20);
ellipse(490,50,20,20);
ellipse(490,130,20,20);
ellipse(535,75,20,20);
ellipse(510,100,20,20);
ellipse(410,150,20,20);
ellipse(540,150,20,20);
ellipse(440,120,20,20);
ellipse(570,130,20,20);

// Moving Objects (Animated)

{
//car
x=x+2;
fill(177,157,109);
beginShape();
vertex(x+100,400);
vertex(x+140,420);
vertex(x+140,440);
vertex(x+100,440);
vertex(x+100,460);
vertex(x+50,460);
vertex(x+50,440);
vertex(x+10,440);
vertex(x+10,420);
vertex(x+50,420);
vertex(x+50,400);
endShape(CLOSE);
//wheels
fill(0);
ellipse(x+30,450,35,35);
fill(0);
ellipse(x+120,450,35,35);
//rims
fill(192,192,192);
ellipse(x+30,450,20,20);
fill(192,192,192);
ellipse(x+120,450,20,20);
//car window
fill(240,255,255,170); //170 is the transparency setting.
triangle(x+100,400,x+140,420,x+100,420);
if(x>640){
x=0.0;
}
}

}//end of draw
