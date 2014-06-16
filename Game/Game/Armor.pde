public class Armor extends Item{
  private int damt;
  public Armor(String a, int s){
    super(a);
    damt = s;
  }
  public int getArmor(){
    return damt;
  }
  public void incArmor(int a){
    damt += a;
  }
}
