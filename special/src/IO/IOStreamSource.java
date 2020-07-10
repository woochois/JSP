//한글
package IO;

import java.io.FileInputStream;
import java.io.InputStreamReader;

public class IOStreamSource {
	public static void main(String[] args) throws Exception{
		FileInputStream fis = new FileInputStream("src/IO/IOStreamSource.java");

		InputStreamReader isr = new InputStreamReader(fis);
		isr.read();
		isr.read();
		char c = (char)isr.read();
		System.out.println(c); // 문자로 읽는다.
		
//		fis.read();
//		fis.read();
//		char c = (char)fis.read();
//		System.out.println(c); // 한글은 바이트가 커서 표현이 안된다.
		
		fis.close();
	}
}
