package sample2.other;
import sample2.Super;

public class Sub extends Super{
	void method() {
		System.out.println(i);
//		System.out.println(j); 다른 패키지에 있으니까 사용 불가. default 접근자
	}
}
