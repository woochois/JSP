package object;



class Book {
	int isbn;

	@Override
	public int hashCode() { // 이클립스 Source 기능
		final int prime = 31;
		int result = 1;
		result = prime * result + isbn;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Book other = (Book) obj;
		if (isbn != other.isbn)
			return false;
		return true;
	}
	
//	@Override
//	public int hashCode() { // equals가 같다면 haseCode도 같다.
//		return isbn;
//	}
//	
//	@Override
//	public boolean equals(Object obj) {
//		Book b = (Book) obj;
//		return this.isbn == b.isbn;
//	}
}

public class Equals {
	public static void main(String[] args) {
		// 객체가 같다.
		Book book1 = new Book();
		Book book2 = new Book();
		Book book3 = book1;
		
		System.out.println(book1==book3);
		
		book1.isbn = 100;
		book2.isbn = 100;
		
		Object o1 = book1;
		System.out.println(book1.equals(book2));
		System.out.println(o1.equals(book2));
	}
}
