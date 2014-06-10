public class Item{
    
    private String name;

    public Item(){}

    public Item(String n){
      name = n;
    }
    
    public Item(int i,String name,int amt,boolean blah){
      if(i == 1){
        
      }else if(i == 2){
        
      }else if(i == 3){
        
      }
    }
    
    public String toString(){
      return name;
    }



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
  public class Usable extends Item{
    private int amt;
    private boolean health;
    private int healby;
    public Usable(int a,boolean s,int d){
      Super("Potion");
      amt = a;
      health = s;
      healby = d;
    }
    public boolean getType(){
      return health;
    }
    public void incAmt(int a){
      amt += a;
    }
    public int getAmt(){
      return amt;
    }
    public int getHealAmt(){
      return healby;
    }
  }
  public class Weapons extends Item{
    private int damagio;
    public Weapons(String a,int s){
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
}
