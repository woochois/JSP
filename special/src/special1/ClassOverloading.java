package special1;

public class ClassOverloading {

	void method() {
		
	}
	
	void method(int i) {
		
	}

//  타입과 이름이 같아서 중복될 수 없다.
//	void method(int j) {
//		
//	}
	
	void method(String s, int i) {
		
	}
	
	// 순서만 다르면 사용 가능하다.
	void method(int i, String s) {
		
	}
}
