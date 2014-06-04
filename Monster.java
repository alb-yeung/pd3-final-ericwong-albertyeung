public class Monster extends Player {

    private MyQueue frontier;
    private int dam, health;
    private int x, y;

    public Monster(int x, int y) {
	this.x = x;
	this.y = y;
	frontier = new MyQueue();
	dam = 3;
	health = 5;
    }

    public void move(Player p) {
	//best-first search: just add to fronteir based on distance to player
	int targetX, targetY;
	targetX = p.getX();
	targetY = p.getY();


	//we need a class that holds the x and y that the player instances will store as an instance variable. this would make this whole calculating part much simpler. We should name the class Box

	//order neighboring squares based on distance
	MinHeap order = new MinHeap();
	int dist;
	int tempX, tempY;
	for (int a=-1;a<2;a++) {
	    for (int b=-1;b<2;b++) {
		tempX = x + a;
		tempY = y + b;
		dist = (tempX-targetX)*(tempX-targetX) + (tempY-targetY)*(tempY-targetY);
		order.insert(dist);
	    }
	}

	//transfer info obtained above into frontier
	while (order.getMax() != -1) 
	    frontier.enqueue(order.removeMax());

	//call dequeue to get best move
    }

    //need damage and health variables

}