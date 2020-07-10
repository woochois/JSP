package exception;

public class ExceptionEx4 {
	public static void main(String[] args) throws ClassNotFoundException { // throws는 JVM이 처리하라고 던지는 의미. (프로그램 종료)
		method1();
	}
	
	public static void method1() throws ClassNotFoundException {
		method2();
	}
	
	public static void method2() throws ClassNotFoundException {
		Class.forName("");
	}
}
