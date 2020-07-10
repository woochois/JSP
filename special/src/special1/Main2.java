package special1;

public class Main2 {
	public static void main(String[] args) {
		ClassStatic c = new ClassStatic();
		System.out.println(c.i);
		c.method();
		
		System.out.println(c.j);
		c.method2();
		
		System.out.println(ClassStatic.j);
		ClassStatic.method2();

	}
}
