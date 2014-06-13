import java.util.*;

char[][] map = new char[60][60];
//ArrayList<Player> players = new ArrayList<Player>();
int x = 0;
int y = 0;
boolean movekey = false;
boolean testkey = false;
int fillcolor = 0;
int testHealth = 20;
//MyQueue fronteir = new MyQueue();
//

/*
void place(Player a,int x, int y){
  a.setx(x);
  a.sety(y);
}
*/

void reveal(int x, int y){
  //make a frontier
  //drag off of frontier
  //make place on window for the revealed
}

void setup(){
  //make the window
  size(600,800);
  noStroke();
  background(0);
  fillcolor = 126;
  
  rect(20,620,220,40);
  fill(255,0,0);
  rect(30,630,200,20);
  fill(0,255,0);
  rect(30,630,testHealth*10,20);
  
  //read the board in
  /*
  try{
    File f = new File("map.txt");
    Scanner map = new Scanner(f);
    int x = 0;
    int y = 0;
    String temp;
    char space;
    while(map.hasNextLine()){
      temp = map.nextLine();
      for(;y<temp.length();){
        char place = temp.charAt(y);
        y++;
      }
      x++;
      y=0;
    }
  }catch(Exception e){System.out.println("exception");};
  */
  
  /*
  int x = 0;
  int y = 0;
  //TESTING PURPOSES
  for(int i = 0;i<map.length;i++){
    for(int j = 0;i<map.length;j++){
      System.out.print(map[i][j]+"");
    }
    System.out.println();
  }
  */

  /*
  for(int i = 0;i<map.length;i++){
    for(int j = 0;j<map.length;j++){
      fill(126);
      rect(x,y,10,10);
      x+=10;
    }
    y-=10;
  }
  */

  //place character in random slot
  //System.out.println("checkpoint 2");
  /*
  do{
  x = (int)(Math.random() * 60);
  y = (int)(Math.random() * 60);
  }while(map[x][y]!='3');
  */
  //place(x,y);
  //reveal(x,y);
  
  //create a map of Boxes
  /*
  Box[][] temp = new Box[60][60];
  for (int r=0;r<map.length;r++) {
    for (int c=0;c<map[r].length;c++) {
      temp[r][c] = new Box(map[r][c], r, c);
      temp[r][c].graphics(); //this method in Box class will create a rec in screen filled by image      
    }
  }
  
  //this method will update images to show where everything is, what is revealed etc.
  updateBoard();
  */
  
  /*
  //running game
  while (true) {
    udpateBoard()
    for (int r=0;r<map.length;r++) {
      for (int c=0;c<map[r].length;c++) {
        map[r][c].action();   
      }
    }
  }
  
  */
}

/*
void updateBoard() {
  for (int r=0;r<map.length;r++) {
      for (int c=0;c<map.length;c++) {
      	  map[r][c].graphics();
      }
  }
}
*/

void updateHealth(){
  fill(255,0,0);
  rect(30,630,200,20);
  fill(0,255,0);
  rect(30,630,testHealth*10,20);
}

void draw(){
  /*
   //move commands
   for(int i = 0;i < players.size();i++){
     if(players.get(i) instanceof Monster){
         (Monster)players.get(i).move();
     }else{
         //()players.get(i).move();
         //reveal(players.get(i).getx(),players.get(i).gety());
     }
   }
   */
   if(movekey == true){
     fill(fillcolor);
     rect(x,y,10,10);
     movekey = false;
   }
   if(testkey == true){
     updateHealth();
     System.out.println(testHealth);
     testkey = false;
   }
     
}

//added checking to make sure the move is possible

void keyPressed(){
  System.out.println(key);
  if(key == 's'){
    //if (map[x][y+1].canWalk() && !((y+1)>59)) {
      y = y+10;
      if(y >= 600)
        y = 600;
      movekey = true;
  }else if(key == 'd'){
    //if (map[x+1][y].canWalk() && !((x+1)>59)) {
      x = x + 10;
      if(x>-600)
        x = 600;
      movekey = true;
  }else if(key == 'a'){
    //if (map[x-1][y].canWalk() && !((x-1)<0)) {
      x = x - 10;
      if(x <= 0)
        x = 0;
      movekey = true;
  }else if(key == 'w'){
    //if (map[x][y-1].canWalk() && !((y-1)<0)) {
      y = y - 10;
      if(y <= 0)
        y = 0;
      movekey = true;
  }else if(key =='j'){
    //fillcolor = (int)(Math.random()*255);
    testHealth -= 1;
    if(testHealth<=0)
      testHealth = 0;
    testkey = true;
  }else if(key == 'k'){
    testHealth = 20;
    testkey = true;
  }
}
