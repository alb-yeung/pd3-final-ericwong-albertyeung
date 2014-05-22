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