package special2;

public interface Pet {
	
	// final은 처음이자 마지막 값을 넣어줘야한다. (변하지 않는다.)
	public static final int i = 0;
	
	void sit(); // 추상메소드: 값이 정해지지 않은 정의된 메소드
	
	public static void method() {
		System.out.println("스태틱 메소드");
	}
	
	public default void method2() {
		System.out.println("인스턴스 메소드");
	}
}
