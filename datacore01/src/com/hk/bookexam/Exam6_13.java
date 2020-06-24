package com.hk.bookexam;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.StringTokenizer;
import java.util.regex.Pattern;

public class Exam6_13 {
	public static void main(String[] args) {
		
		// 6번 문제
		byte[] bytes = {73, 32, 108, 111, 118, 101, 32, 121, 111, 117};
		String str = new String(bytes);
		System.out.println(str);
		
		// 7번 문제
		String str2 = "모든 프로그램은 자바 언어로 개발될 수 있다.";
		int index = str2.indexOf("자바");
		if(index == -1) {
			System.out.println("자바 문자열이 포함되어 있지 않습니다.");
		}else {
			System.out.println("자바 문자열이 포함되어 있습니다.");
			str2 = str2.replace("자바", "Java");
			System.out.println("-->" + str2);
		}
		
		System.out.println();
		
		// 8번 문제
		String str3 = "아이디,이름,패스워드";
		
		// 방법 1(split() 메소드 이용)
		String[] res = str3.split(",");
		for(String result : res) {
			System.out.println(result);
		}
		
		System.out.println();
		
		// 방법 2(StringTokenizer 이용)
		StringTokenizer sttz =  new StringTokenizer(str3, ",");
		
		while(sttz.hasMoreTokens()) {
			System.out.println(sttz.nextToken());
		}
		
		// 9번 문제
		String str4 = "";
		for(int i=1; i<=100; i++) {
			str4 += i;
		}
		System.out.println(str4);
		
		// 개선 코드 작성 위치
		StringBuilder sb = new StringBuilder();
		
		for(int i=1; i<=100; i++) {
			sb.append(i);
		}
		System.out.println(sb.toString());
		
		// 10번 문제
		String id = "5Angel1004";
		String regExp = "\\d\\w{5}\\d{4}";
		boolean isMatch = Pattern.matches(regExp, id);
		if(isMatch) System.out.println("ID로 사용할 수 있습니다.");
		else System.out.println("ID로 사용할 수 없습니다.");
		
		// 11번 문제
		Integer obj1 = 100;
		Integer obj2 = 100;
		Integer obj3 = 300;
		Integer obj4 = 300;
		
		System.out.println(obj1 == obj2);
		System.out.println(obj3 == obj4);
		
		// 박싱된 int 값의 범위가 -128 ~ 127 이기 때문에 값이 300이면 언박싱을 통해 값을 뽑아줘야한다.
		System.out.println(obj3.intValue() == obj4.intValue());
		
		// 12번 문제
		String strData1 = "200";
		int intData1 = Integer.parseInt(strData1);
		
		int intData2 = 150;
		String strData2 = String.valueOf(intData2);
		System.out.println(intData1 + " " + strData2);
		
		// 13번 문제
		Date now = new Date();
		
		// 여기서 코드를 작성하세요.
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 E요일 HH시 mm분");
		System.out.println(sdf.format(now));
	}
}
