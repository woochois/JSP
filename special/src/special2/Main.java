package special2;

public class Main {
	public static void main(String[] args) {
		Cat c = new Cat();
		Pet p = c;
//		p.cry();  Pet은 cry 메소드가 없으므로 에러
		p.sit();
		
		Pet p2 = new Malamute();
		p2.sit();
		
	}
}
