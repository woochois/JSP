package special1;

public class Main3 {
	public static void main(String[] args) {
		ClassAccessModifier c = new ClassAccessModifier();
		System.out.println(c.i);
//		System.out.println(c.j); j 는 private 라 에러 발생 
		System.out.println(c.k);
	}
}
