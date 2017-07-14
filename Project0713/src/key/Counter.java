package key;

public class Counter {
	private int count;
	
	public Counter() {
		this.count = 0;
	}

	public int getCount() {
		return count;
	}

	public void setCount() {
		this.count += 1;
	}
}
