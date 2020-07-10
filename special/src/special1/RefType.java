package special1;

public class RefType {

	// 5장. 참조타입 ( 굉장히 많이 쓰인다. )

	// 참조타입이 쓰일 때, 어떤 일이 일어나는 지 알아야한다.
	
	// 기본 타입 : int, short, byte, long, boolean, char, float, double
	
	// 기본 타입 이외의 모든 것은 참조 타입 (예외는 없다.)
	
	String s = "hello"; // String 문자열 타입
	
	int[] arr = new int[3]; // Integer 배열 타입
	
	int i = 3; // int 기본 타입
	
	// 기본 타입은 stack 메모리 안에 값과 같이 저장된다.
	
	// 참조 타입은 stack 메모리 안에 저장될 때, heap 메모리 안의 instance의 주소를 저장한다.
	// heap 메모리에 속성과 필드를 포함한 instance가 저장된다.
	// instance 의 주소가 JVM에 의해 할당이 된다.
	// instance : 속성과 기능이 있는 데이터의 덩어리

	// ex 1.
	String a = new String("Str");
	// stack 에 있는 a 는 참조 변수 / heap 에 있는 a 는 참조 값 / String 은 참조  타입		
	// a 는 stack 메모리에 형성된다.
	// Str 은 heap 메모리에 형성된다.
	// a 는 Str의 heap 메모리 주소값만 가지고 있다.
	
	// ex 2.
	public static void main(String[] args) {
		String b = new String("str"); // 객체 == 인스턴스
		
		// String 은 너무 자주 사용되어서 자바에서 String 만 new 연산자를 사용 안해도된다. 
		String c = "java";
		// String 은 JVM 에서 인스턴스를 재사용한다.
		String c2 = "java"; // c == f
		System.out.println(c == c2); // 인스턴스가 재사용되어 true
		String c3 = new String("java"); // 새로운 인스턴스를 만든다. 같은 값일 지라도 새로 만든다. c != c3
		System.out.println(c2 == c3); // false
		System.out.println(c2.length()); // 4
		System.out.println(c3.length()); // 4 길이는 같다.
		
		
		String b1 = b; // b가 가지고있는 주소값을 넘긴다. 결국 같은 인스턴스를 참조한다.
		
		int i = 3;
		int j = i;
		
		System.out.println(i == j); // 값이 일치하기 때문에 참
		System.out.println(b == b1); // 주소 값이 일치하기 때문에 참
		System.out.println(b.length());
		System.out.println(b1.length());
	}
	
	// 객체(Object)는 소프트웨어에서 구현할 대상이고, 이를 구현하기 위한 설계도가 클래스(Class)이며, 이 설계도에 따라 소프트웨어 세계에 구현된 실체가 인스턴스(Instance)이다. 

	// 객체(Object)는 현실의 대상(Object)과 비슷하여, 상태나 행동 등을 가지지만, 소프트웨어 관점에서는 그저 콘셉(concept), 즉 사유의 결과일 뿐이다. 소프트웨어에서 객체를 구현하기 위해서는 콘셉 이상으로 많은 것들을 사고하여 구현해야 하므로, 이를 위한 설계도로 클래스를 작성한다. 설계도를 바탕으로 객체를 소프트웨어에 실체화 하면 그것이 인스턴스(Instance)가 되고, 이 과정을 인스턴스화(instantiation)라고 한다. 실체화된 인스턴스는 메모리에 할당된다. 

	// 코딩을 할 때, 클래스 생성에 따라 메모리에 할당된 객체인 인스턴스를 ‘객체’라고 부르는데, 틀린 말이 아니다.

	// 인스턴스라고 부르면 더 정확하지만, 개념적으로 인스턴스는 객체에 포함된다고 볼 수 있다. 물론 어디가 소프트웨어 세계에 더 가깝냐를 따지면 당연히 인스턴스이다. 잘 구분해서 쓴다면 프로빼쌰날(?) 하다는 소리를 들을 수 있을지도.

	// 그러나 객체나 인스턴스를 클래스로, 혹은 클래스를 객체나 인스턴스라고 해선 안 된다. 건물의 설계도를 보고 건물이라고 하지 않고, 반대로 건물을 설계도라고 하지 않으니까~
	
}
