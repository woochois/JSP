package exception;

public class ExceptionEx3 {
	
	public static void main(String[] args) {
		
		try {
			int i = 0;
			
			System.out.println(3/i);
			Class.forName("");
		} catch (ClassNotFoundException e) { // | 기호를 사용해서 붙여서 쓸 수 있다. xxx | xxx e 이런 식
			e.printStackTrace();
		} catch (ArithmeticException e) {
			e.printStackTrace();
		} catch (Exception e) { // 상위 클래스의 Exception은 항상 맨 아래에 위치
			e.printStackTrace();
		}
	}	
}
