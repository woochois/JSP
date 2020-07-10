package exception;

public class ExceptionEx2 {
	public static void main(String[] args) {
		int i = 3;
		try {
			System.out.println(i/0);			
		}catch (ArithmeticException e) {
			e.printStackTrace(); // 꼭 넣어주자. 어디서 에러가 났는 지, 나열해준다.
		}

		System.out.println("프로그램 종료");
	}
}
