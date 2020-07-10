package special1;

public class RefType2 {
	public static void main(String[] args) {
		
		int[] arr = new int[3]; 
		int[] arr2 = arr; // 인스턴스는 하나, 참조 변수는 2개. 같은 인스턴스를 참조.
		
		arr2[0] = 9; // 같은 참조값을 가지고 있기 때문에 같은 인스턴스에 추가된다.		
		System.out.println(arr[0]); // 9
		
		change(arr2);
		System.out.println(arr[1]); // 10
		
		int i = 3;
		print(i); // 3
		
	}
	
	private static void change(int[] ar) {
		ar[1] = 10;
	}
	
	private static void print(int k) {
		System.out.println(k);
	}
}
