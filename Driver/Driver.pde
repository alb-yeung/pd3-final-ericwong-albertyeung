char[][] map = new char[60][60];
ArrayList<Player> players = new ArrayList<Player>();


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
  background(0,0,0);
  
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
      for(int place = 0;place<temp.length();place++){
        char[x][y]=temp.charAt(place);
        y++;
      }
      x++;
      y=0;
    }
    f.close();  
  }catch(Exception e){};
  int x;
  int y;
  //place character in random slot
  do{
  x = Math.random() * 60;
  y = Math.random() * 60;
  }while(map[x][y]!='3');
  //place(x,y);
  //reveal(x,y);
  */
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
}
