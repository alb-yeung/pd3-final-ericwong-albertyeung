import java.util.*;

char[][]map = new char[60][60];

boolean movekey = false;
boolean testkey = false;
int fillcolor = 0;
int testHealth = 20;
int x,y;

Player testPlayer = new Player("Bob",20);

void setup(){
  size(600,800);
  noStroke();
  background(0);
  fillcolor = 126;
  
  rect(20,620,220,40);
  updateHealth();
}

void updateHealth(){
  fill(255,0,0);
  rect(30,630,200,20);
  fill(0,255,0);
  rect(30,630,testPlayer.healthPercent()*10,20);
}

void draw(){
  if(movekey == true){
     fill(fillcolor);
     rect(x,y,10,10);
     movekey = false;
   }
   if(testkey == true){
     updateHealth();
     System.out.println(testPlayer.healthPercent());
     testkey = false;
   }
}

void keyPressed(){
 if(key == 's'){
      y = y+10;
      if(y > 590)
        y = 590;
      movekey = true;
  }else if(key == 'd'){
      x = x + 10;
      if(x>590)
        x = 590;
      movekey = true;
  }else if(key == 'a'){
      x = x - 10;
      if(x < 0)
        x = 0;
      movekey = true;
  }else if(key == 'w'){
      y = y - 10;
      if(y < 0)
        y = 0;
      movekey = true;
  }else if(key =='j'){
    testPlayer.takeDamage(1);
    testkey = true;
  }else if(key == 'k'){
    testPlayer.setHealth(20);
    testkey = true;
  }
}
