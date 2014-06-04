public class Box {

    boolean walkable;
    int x, y;

    public Box (int n, int x, int y) {
	if (n == 0) {
	    walkable = false;
	    this.x = x;
	    this.y = y;
	}
	if (n == 1) {
	    Wall w = new Wall(x, y);
	}
	if (n == 2) {
	    Door d = new Door(x, y);
	}
	if (n == 3) {
	    walkable = true;
	    this.x = x;
	    this.y = y;
	}
	if (n == 4) {
	    Trap t = new Trap(x, y);
	}
	if (n == 5) {
	    Chest c = new Chest(x, y);
	}
    }


}