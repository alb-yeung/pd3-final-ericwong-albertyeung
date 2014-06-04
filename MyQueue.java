public class MyQueue {

    private Node head,tail;

    public MyQueue() {
	head = null;
	tail = null;
    }

    public void enqueue(int x, int y) {
	Node n = new Node(x, y);
	if (head == null) {
	    head = n;
	    tail = n;
	}
	else {
	    n.setNext(head);
	    head = n;
	}
    }

    public String dequeue() {
	String s = null;
	if (head != null) {
	    s = head.getData();
	    head = head.getNext();
	}
	if (head == null) {
	    tail = null;
	}
	return s;
    }

    public boolean isEmpty() {
	return (head == null);
    }

    public String front() {
	if (head == null)
	    return null;
	else 
	    return head.getData();
    }

   
}
