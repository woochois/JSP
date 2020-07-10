package thread;

public class ThreadEx3 {
	public static void main(String[] args) throws InterruptedException {
		MyThread2 r = new MyThread2();
		Thread t1 = new Thread(r);
		Thread t2 = new Thread(r);
		t1.start();
		t2.start();
		
		t1.join();
		t2.join();
		
		System.out.println(r.i);
		
	}
}
