import java.util.*;

Box[][]map = new Box[60][60];

boolean movekey = false;
boolean testkey = false;
int fillcolor = 0;
int testHealth = 20;
int x,y;
Frontier area = new Frontier();

Player testPlayer = new Player("Bob",20);

void setup(){
  size(600,800);
  noStroke();
  background(0);
  fillcolor = 126;
  
  //reading board in
  char[][] temp = new char[60][60];
  try {
    File f = new File("map.txt");
    Scanner sc = new Scanner(f);
    String next;
    while (sc.hasNextLine()) {
      next = sc.nextLine();
      for (int x=0;x<60;x++) {
        for (int y=0;y<60;y++) {
          System.out.println(next.charAt(y));
          temp[x][y] = next.charAt(y);          
        }
      }
    }
  } catch (Exception e) {System.out.println("still didnt read");}
  
  //convert chars into boxes
  for (int x=0;x<60;x++) {
    for (int y=0;y<60;y++) {
      map[x][y] = new Box(temp[x][y], x, y);     
    }
  }
  
  rect(20,620,220,40);
  updateHealth();
  
  //running the game
  game();
}

void game() {
 updateBoard(); 
}

//this method will update graphics
//might need to alter to take in Player parameter so only reveal
//things within a 2-3 radius of it will be easy to fix
void updateBoard() {
  for (int x=0;x<60;x++) {
    for (int y=0;y<60;y++) {
      map[x][y].graphics();
    }
  }
}

void updateHealth(){
  fill(255,0,0);
  rect(30,630,200,20);
  fill(0,255,0);
  rect(30,630,testPlayer.healthPercent()*10,20);
}

void updateVision(){
  fill(255,255,255);
  
  Box temp;
  while(area.isEmpty()==false){
    temp = area.dequeue();
    rect(temp.getX(),temp.getY(),10,10);
  } 
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
