package special1;

public class HelloWorld {

	public static void main(String[] args) { 

		// 자바 교재
		
		// 2 ~ 3장. 각 스테이트먼트들이 모여서 하나의 클래스가 완성된다.
		int i; // 변수를 선언하는 명령
		
		i = 40; // 값을 넣어주는 명령
		
		int j = 3; // 변수를 선언하면서 값을 넣어주는 명령
		
		int z = i + j; // 연산자를 이용해 값을 넣어주는 명령
		
		System.out.println(z); // 메소드를 호출하는 명령
		
		// 4장. 스테이트먼트가 항상 순서대로 진행되는 건 아니다. (조건문, 반복문)
		if(z>3) System.out.println("z 는 3 보다 크다.");
		else System.out.println("z 는 3보다 크지 않다.");
		
		for(int k = 0; k < 5; k++) System.out.println(k);
	}
}
