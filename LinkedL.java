public class LinkedL{
    private class Node{
	//cost, houses, rent, owner
	private int cost;
	private int houses;
	private int rent;
	private int rampamt;//how much extra per house
	private String owner;
	private Node next;
	
	public Node(int cost, int rent, int rampamt){
	    this.cost = cost;
	    this.houses = 0;
	    this.rent = rent;
	    this.rampamt = rampamt;	    
	}
	
	public void setOwner(String name)
	    owner = name;
	public int getCost()
	    return rent + (houses*rampamt)
	    public int getHouses()
	    return houses;
	public String getOwner()
	    return owner;
	public void setNext(Node n)
	    next = n;
	public void getNext()
	    return next;
    }

    private Node head;

    public LinkedL(){
    }

}