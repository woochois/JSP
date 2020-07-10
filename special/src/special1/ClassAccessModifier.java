package special1;

public class ClassAccessModifier {
	
	// 접근 제한자
	
	// private : 자기 클래스 내부에서만 접근이 가능하다. 다른 클래스에서 사용 불가하다.
	private int j;
	
	// default(package private) : 같은 패키지 내부에서만 접근이 가능하다. 아무 것도 안써주는 게 default 
	int k;
	
	// protect : 
	
	
	// public : 어디에서든 접근이 가능하다. 다른 패키지에 있는 클래스에서도 접근이 가능하다.
	public int i;

	
	void method() {
		System.out.println(j);
	}
}
