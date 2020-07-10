package special3.sample3;

public class Main {
	public static void main(String[] args) {
		MyInterface m1 = new MyInterface() {
			
			@Override
			public void method(int a, int b) {
				
			}
		};
		
		// 람다식 (파라미터타입이 정의되어 있기에 안써도 된다)
		MyInterface m2 = (a, b) -> {
			
		};
		
		// 리턴 타입이 있으면 반드시 리턴값을 넣어줘야한다.
		MyInterface2 i2 = (a) -> {
			return 3;
		};
		
		MyInterface2 i3 = a -> a * 2;
		int k = i3.method(99);
		System.out.println(k);
	}
}
