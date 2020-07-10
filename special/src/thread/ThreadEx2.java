package thread;

public class ThreadEx2{
	public static void main(String[] args) {
		Thread t = new MyThread();
		t.start();
		
		for(int i = 0; i < 1000; i++) System.out.println("main thread " + i);
	}
}
