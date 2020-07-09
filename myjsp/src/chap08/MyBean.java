package chap08;

public class MyBean {
	
	private String name;
	private int id;
	boolean b;
	
	public String getFirstName() {
		return name.substring(0,3);
	}
	
	public boolean isB() { // getB() 와 같은 의미
		return b;
	}
	public void setB(boolean b) {
		this.b = b;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	// getId : Id 속성 (set도 똑같이)
	// getName : Name 속성 (set도 똑같이)
	// property 는 method 에 의해 결정된다.
	// get set 메소드가 전부 있을 필요는 없다. 둘 중 하나만 있어도 프로퍼티는 있다.
}
