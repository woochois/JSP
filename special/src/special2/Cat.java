package special2;

public class Cat extends KindaCat implements Pet{

	@Override
	public void cry() {
		System.out.println("야옹!!!!");
		
	}

	@Override
	public void sit() {
		System.out.println("고양이가 앉습니다.");
		
	}
	
}
