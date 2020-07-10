package special3.sample1;

public class Main {
	public static void main(String[] args) {
		Super s1 = new Sub();
		s1.cry();
		s1.walk();
		
		Super s2 = new Super() {
			@Override
			public void cry() {
			}
			@Override
			public void walk() {
			}
		};
		s2.cry();
		s2.walk();
	}
}
