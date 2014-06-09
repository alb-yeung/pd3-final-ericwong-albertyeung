public class Player{
  int x,y;
  String name;
  int dam, health;
  
  public Player(String n){
    name = n;
  }public void setx(int x){
    this.x = x;
  }public void sety(int y){
    this.y = y;
  }public int getx(){
    return x;
  }public int gety(){
    return y;
  }public void setHealth(int h) {
    health = h;
  }public int getHealth() {
    return health;
  }
}
