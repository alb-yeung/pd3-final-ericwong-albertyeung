import java.util.*;

char[][] map = new char[60][60];
ArrayList<Player> players = new ArrayList<Player>();
int x = 0;
int y = 0;
boolean newkey = false;
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
   if(newkey = true){
     rect(x,y,10,10);
     newkey = false;
   }
     
}

void keyPressed(){
  fill(126);
  System.out.println(key);
  if(key == 's'){
    y = y-10;
    newkey = true;
  }else if(key == 'd'){
    x = x + 10;
    newkey = true;
  }else if(key == 'a'){
    x = x - 10;
    newkey = true;
  }else if(key == 'w'){
    y = y + 10;
    newkey = true;
  }
}
