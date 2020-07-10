package special2;

public class Malamute extends KindaDog implements Pet, SledDog{

	@Override
	public void sit() {
		System.out.println("말라뮤트가 앉습니다.");
		
	}

	@Override
	public void pull() {
		System.out.println("말라뮤트가 썰매를 끕니다.");
		
	}

}
