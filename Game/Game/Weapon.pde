public class Weapon extends Item{
  private int damagio;
  public Weapon(String a,int s){
    super(a);
    damagio = s;
  }
  public int getDamage(){
    return damagio;
  }
  public void incDamage(int n){
    damagio += n;
  }
}
