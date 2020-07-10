package thread;

public class MyThread2 implements Runnable{
	
	public int i = 0;
	
	@Override
	public void run() {
//		Thread t = Thread.currentThread();
		int k = 0;
		for(int i = 0; i < 10000; i++) {
			this.i++; // i 를 읽고 i 의 값을 더하고 i 를 쓴다. (세 가지 연산의 연속)
			k++;
//			System.out.println(t.getName() + ", " + i);
		}
		System.out.println(k);
	}
}
