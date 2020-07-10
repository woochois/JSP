package special1;

public class Main {
	public static void main(String[] args) {
		Class a = new Class();
		
		System.out.println(a.i);
		System.out.println(a.s);
		System.out.println(a.a);
		
		a.method1();
		a.method2();
		
		Class b = a;
		b.i = 99;
		System.out.println(a.i);
		
		change(b);
		System.out.println(b.i);
		System.out.println(a.i);
	}
	
	private static void change(Class a) {
		a.i = 300;
	}
}
