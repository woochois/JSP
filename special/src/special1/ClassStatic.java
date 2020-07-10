package special1;

public class ClassStatic {

	// 필드와 메소드를 묶어서 멤버라고 부른다.
	
	
	// static 이 붙으면 클래스에 대한 정보 
	// (= 클래스 필드, 클래스 메소드 == 스태틱 필드, 스태틱 메소드)
	
	static int j;
	
	int i;
	
	
	static void method2() {
		// static 에서 인스턴스 접근은 불가능하다.
		// System.out.println(i); 에러
	}
	
	void method() {
		System.out.println(j);
	}
	
	
	
}
