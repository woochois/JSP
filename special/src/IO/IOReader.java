//한글

package IO;

import java.io.FileReader;

// 한글
public class IOReader {
	public static void main(String[] args) throws Exception{
		FileReader fr = new FileReader("src/IO/IOReader.java");
		
		fr.read();
		fr.read();
		char c = (char)fr.read();
		System.out.println(c);

		fr.close();
	}
}
