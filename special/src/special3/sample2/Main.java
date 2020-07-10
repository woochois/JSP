package special3.sample2;

public class Main {
	public static void main(String[] args) {
		MyInterface o1 = new MyInterface() {
			
			@Override
			public void method() {
				
			}
		};
		o1.method();
		
		// 람다식
		// 이미 정의되어 있기에 다른 게 필요하지 않다.
		MyInterface o2 = () -> {
			System.out.println("hello");
		};
//		MyInterface o2 = () -> System.out.println("hello"); 한 줄 이면 이렇게 표현 가능 
		o2.method();
	}
}
