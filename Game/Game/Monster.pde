import java.util.*;

public class Monster extends Player {

    private MyQueue frontier;
    private int dam, health;
    private int x, y;
    private PImage pic;

    public Monster(int x, int y) {
	this.x = x;
	this.y = y;
	frontier = new MyQueue();
	dam = (int)(Math.random()*5);
	health = 10 + (int)(Math.random()*15);
        try {
          pic = loadImage("monster.png");
        } catch (Exception e) {}
    }

    public void move(Player p) {
	//best-first search: just add to fronteir based on distance to player
	int targetX, targetY;
	targetX = p.getx();
	targetY = p.gety();

	//order neighboring squares based on distance
	ArrayList<Box> order = new ArrayList<Box>();
	int dist;
	int tempX, tempY;
	for (int a=-1;a<2;a++) {
	    for (int b=-1;b<2;b++) {
		tempX = x + a;
		tempY = y + b;
		dist = (tempX-targetX)*(tempX-targetX) + (tempY-targetY)*(tempY-targetY);
		//add onto ordering only if the square can be walked upon
                /*WHAT IS MAP
		if (map[a][b].walkable())
		    order.set(dist, map[a][b]);
                */
	    }
	}

	//transfer info obtained above into frontier
	for (Box place : order) {
            if (place != null) 
	      frontier.enqueue(place);
        }

	//call dequeue to get best move and set monster coordinates to coordinate of box
	Box dest = frontier.dequeue();
	this.setx(dest.getX());
	this.sety(dest.getY());
    }

     public void attack(Player p) {
	int targetX = p.getx();
	int targetY = p.gety();
       	//player must be in within a two block radius
	if ((Math.abs(this.x - targetX) < 3) && (Math.abs(this.y - targetY) < 3)) {
	    p.setHealth(p.getHealth()-dam);
	}
    }

    public int getHealth() {
	return health;
    }

    public void setHealth(int h) {
	health = h;
    }

}
