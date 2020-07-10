package object;

public class HashCode {
	public static void main(String[] args) {
		Book b1 = new Book();
		Book b2 = new Book();
		b1.isbn = 100;
		b2.isbn = 100;
		
		// HashCode == Hash Function
		// 다른 객체끼리 해쉬코드가 같을 수 있다. 
		// 해쉬코드 == 서랍
		// 서로 다른 양말이라도 1번 서랍
		// 양말은 항상 1. 어제 신은 양말도 1. 오늘 또 신으면 1.
		// 서로 다른 옷이라도 2번 서랍
		
		// 같은 해쉬코든데 다른 값이 나온다. 이러면 안된다. 다시 정의를 해줘야한다.
		System.out.println(b1.hashCode());
		System.out.println(b2.hashCode());
	}
}
