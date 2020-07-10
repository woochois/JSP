package sample;

public class Main {
	public static void main(String[] args) {
		Cat cat = new Cat();
		cat.cry();
		KindaCat kc1;
//		kc1 = new KindaCat();
		kc1 = cat;
		System.out.println(kc1==cat);
		kc1.cry(); // 참조변수의 타입과는 상관 없이 실제 인스턴스의 메소드가 실행. 야옹
		
		Tiger tiger = new Tiger();
		tiger.cry();
		tiger.hunt();
		
		KindaCat kc2 = tiger;
		kc2.cry();
//		kc2.hunt(); KindaCat에는 hunt() 메소드가 없기 때문에 에러
		
		Tiger tiger2 = (Tiger) kc2; // 꼭 Tiger 타입어야한다. 그 외는  에러 발생
		Cat cat3 = (Cat) kc2; // 에러 발생
		
		printCry(tiger);
	}
	
	private static void printCry(KindaCat c) {
		c.cry();
	}
	
}
