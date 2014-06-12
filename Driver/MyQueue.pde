public class MyQueue {

    private Node head,tail;

    public MyQueue() {
	head = null;
	tail = null;
    }

    public void enqueue(Box b) {
	Node n = new Node(b);
	if (head == null) {
	    head = n;
	    tail = n;
	}
	else {
	    n.setNext(head);
	    head = n;
	}
    }

    public Box dequeue() {
	Box first = null;
	if (head != null) {
	    first = head.getData();
	    head = head.getNext();
	}
	if (head == null) {
	    tail = null;
	}
	return first;
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
