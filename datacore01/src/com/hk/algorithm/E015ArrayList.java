package com.hk.algorithm;

import java.util.ArrayList;
import java.util.Iterator;

public class E015ArrayList {
	public static void main(String[] args) {
		// 제네릭 사용
		ArrayList<String> fruits = new ArrayList<String>();

		// add()로 String 객체를 리스트에 추가
		fruits.add("apple");
		fruits.add("banana");
		fruits.add("kiwi");

		// 출력하기
		for (int i = 0; i < fruits.size(); i++) {
			System.out.println(fruits.get(i));
		}
		
		// Iterator 사용하기
		for(Iterator<String> itr = fruits.iterator(); itr.hasNext();) {
			System.out.println(itr.next());
		}
	}
}
