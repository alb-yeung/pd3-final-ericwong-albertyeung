public class Monster extends Player {

    private MyQueue fronteir;

    public Monster(int x, int y) {
	super.setx(x);
	super.sety(y);
	fronteir = new MyQueue();
    }

    public void move(Player p) {
	//best-first search: just add to fronteir based on distance to player
    }

    //need damage and health variables

}