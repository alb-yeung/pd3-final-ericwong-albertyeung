import java.util.*;

char[][] map = new char[60][60];
ArrayList<Player> players = new ArrayList<Player>();
int x = 0;
int y = 0;
boolean newkey = false;
int fillcolor = 0;
MyQueue fronteir = new MyQueue();
//


void place(Player a,int x, int y){
  a.setx(x);
  a.sety(y);
}

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
}

void updateBoard() {
  for (int r=0;r<map.length;r++) {
      for (int c=0;c<map.length;c++) {
      	  map[r][c].graphics();
      }
  }
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
   if(newkey == true){
     fill(fillcolor);
     rect(x,y,10,10);
     newkey = false;
   }
     
}

void keyPressed(){
  System.out.println(key);
  if(key == 's'){
    y = y+10;
    newkey = true;
  }else if(key == 'd'){
    x = x + 10;
    newkey = true;
  }else if(key == 'a'){
    x = x - 10;
    newkey = true;
  }else if(key == 'w'){
    y = y - 10;
    newkey = true;
  }else if(key =='j'){
    fillcolor = (int)(Math.random()*255);
  }
}
