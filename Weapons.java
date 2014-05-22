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