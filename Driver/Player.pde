
public class Player {
  int x,y;
  String name;
  int dam, health, maxhealth;
  //MyArrayList<Item> loot;
  public Player(){
  }
  public Player(int x, int y){
    this.x = x;
    this.y = y;
  }
  public Player(String n){
    name = n;
    //loot = new Item[10];
  }
  public Player(String n, int i){
    name = n;
    health = i;
    maxhealth = i;
    dam = 10;
  }
  public void setx(int x){
    this.x = x;
  }
  public void sety(int y){
    this.y = y;
  }
  public int getx(){
    return x;
  }
  public int gety(){
    return y;
  }
  public void setHealth(int h) {
    health = h;
  }
  public int getHealth() {
    return health;
  }
  /*
  public void receive(Item i) {
    loot.add(i);
  }

  public void attack(Player p) {
    p.setHealth(p.getHealth() - dam);
  }
}
