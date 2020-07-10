package IO;

import java.io.FileInputStream;

public class IOInputStream {
	public static void main(String[] args) throws Exception {
		FileInputStream fis = new FileInputStream("src/IO/IOInputStream.java");
		
//		int f = fis.read();
//		System.out.println(f);
		
		int f = 0;
		int bytes = 0;
		while ((f = fis.read())!= -1) {
			bytes++;
		}
		System.out.println(bytes);
		
		fis.close();
	}
}
