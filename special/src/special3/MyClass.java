package special3;

public class MyClass {
	
	class NestedClass1 {
		
	}
	
	static class NestedClass2 {
		
	}
	
	void method() {
		class LocalClass {
			
		}
		
		LocalClass l = new LocalClass();
	}
}
