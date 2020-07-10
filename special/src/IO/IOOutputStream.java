package IO;

import java.io.FileInputStream;
import java.io.FileOutputStream;

public class IOOutputStream {
	public static void main(String[] args) throws Exception{
		FileInputStream fis = new FileInputStream("src/IO/IOOutputStream.java");
		FileOutputStream fos = new FileOutputStream("copy.java"); // copy.java라는 파일을 써준다.
		
//		fos.write(112); // 1 byte
		
		int b = 0;
		while((b=fis.read())!= -1) {
			fos.write(b);
		}
		
		// 항상 사용하고 끝내야한다.
		fis.close();
		fos.close();
	}
}
