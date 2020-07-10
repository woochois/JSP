package thread;

public class ThreadEx {
	public static void main(String[] args) {
		Thread t = new Thread(new MyRun());
		t.start();
		
		for(int i = 0; i < 1000; i++) {
			System.out.println("main thread" + i);
		}
	}
}
