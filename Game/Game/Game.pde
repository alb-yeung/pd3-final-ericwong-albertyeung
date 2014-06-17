import java.util.*;

Box[][]map = new Box[60][60];

boolean movekey = false;
boolean testkey = false;
int fillcolor = 0;
int testHealth = 20;
int x,y;
Frontier area = new Frontier();
Player main;
Map m = new Map();

void setup(){
  size(600,800);
  noStroke();
  background(0);
  fillcolor = 126;
  
  //reading board in
  char[][] temp = new char[60][60];
  try {
    File f = new File("./map.txt");
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
      m.set(x, y, new Box(temp[x][y], x, y));     
    }
  }
  
  //running the game
  game();
    
  rect(20,620,220,40);
  updateHealth();

  while (main.alive()){}
  System.exit(0);
}

void game() {
  main = new Player("Bob", 20);
  placeP(main); //place player in random spot
  placeM(); //placing monsters over board
  updateBoard(main); 
}


//randomly place player in spot that they can walk
void placeP(Player p) {
  for (int x=0;x<60;x++) {
    for (int y=0;y<60;y++) {
      if ((m.get(x,y).canWalk()) && (Math.random()<.5)) {
        p.setx(x);
        p.sety(y);
        return;
      }        
    }
  }
}

//randomly place monsters
void placeM() {
  int monsters = 10;
  while (monsters>0) {
   int x = (int)(Math.random()*60);
   int y = (int)(Math.random()*60);
   if (m.get(x,y).canWalk()) {
    Monster mon = new Monster(x, y, m);
    monsters--;
   } 
  }  
}

//this method will update graphics
//only reveal things within a 2-3 radius of it
void updateBoard(Player p) {
  for (int x=-1;x<2;x++) {
    for (int y=-1;y<2;y++) {
      if ((p.getx()+x<0) || (p.getx()+x>59) || (p.gety()+y<0) || (p.gety()+y>59)) {}
      else {
        m.get(p.getx()+x,p.gety()+y).graphics();
      }
    }
  }
}

void updateHealth(){
  fill(255,0,0);
  rect(30,630,200,20);
  fill(0,255,0);
  rect(30,630,main.healthPercent()*10,20);
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
     System.out.println(main.healthPercent());
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
    main.takeDamage(1);
    testkey = true;
  }else if(key == 'k'){
    main.setHealth(20);
    testkey = true;
  }
  updateBoard(main);
}
