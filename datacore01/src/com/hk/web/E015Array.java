package com.hk.web;

import java.util.Arrays;
import java.util.Scanner;

public class E015Array {
	public static void main(String[] args) {
		
		// 최대값 구하기
		int[] a = {10, 32, 345, 3410, 304};
		
		
		// 반복문 - if 조건문 사용
		int max = a[0]; // 최대값
		
		for(int i = 0; i < a.length; i++) {
			if(max < a[i]) max = a[i];

		}
		System.out.println(max);
		
		// 다른 반복문 - Math.max 함수 사용
		for(int i = 0; i < a.length; i++) {
			max = Math.max(max, a[i]);
		}
		System.out.println(max);
		
		// 다른 방법 - 내림차순 정렬 후, 맨 마지막 배열 주소값 반환 -> 최대값
		Arrays.sort(a);
		System.out.println(a[4]);
		
		// 다른 방법 - 2개씩 배열 비교 -> 최대값
		System.out.println(Math.max(Math.max(Math.max(Math.max(a[0], a[1]), a[2]), a[3]), a[4]));
		
		// 응용
		// 배열의 위치값 찾기
		
		int[] b = {10, 32, 345, 3410, 304};
		int max2 = b[0];
		int index = 0;
		
		for(int i = 0; i < a.length; i++) {
			if(max2 < b[i]) max2 = b[i];
			if(max2 == b[i]) index = i;
		}
		System.out.println(b[index] + " , b[" + index + "]");
		
		// PPT 답
		int[] c = {10, 32, 345, 3410, 304};
		int max3 = 0;
		int index2 = 0;
		
		for(int i = 1; i < c.length; i++) {
			if(c[max3] < c[i]) {
                max3 = i; 
                index2 = i;
			}
		}
		System.out.println(c[max3] + " , " + (index2 + 1) + "번째 숫자");
		
		// 최소값과 위치값 구하기
		int[] d = {10, 32, 345, 3410, 304};
		int min = d[0];
		int index3 = 0;
		
		for(int i = 0; i < d.length; i++) {
			if(min > d[i]) min = d[i];
			if(min == d[i]) index3 = i;
			
		}
		System.out.println(min + " , 인덱스값 : " + index3);
		
		// 최소값과 위치값 구하기 (코드 줄이기)
		int min2 = 0;
		for(int i = 0; i < d.length; i++) {
			if(d[min2] > d[i]) min2 = i;
		}
		System.out.println(d[min2] + " , 인덱스값 : " + min2);
		
		// 다른 반복문 - Math.min 함수 사용
		for(int i = 0; i < a.length; i++) {
			min = Math.min(min, a[i]);
		}
		System.out.println(min);
		
		// 다른 방법 - 내림차순 정렬 후, 맨 처음 배열 주소값 반환 -> 최소값
		Arrays.sort(d);
		System.out.println(a[0]);
		
		// 다른 방법 - 2개씩 배열 비교 -> 최소값
		System.out.println(Math.min(Math.min(Math.min(Math.min(d[0], d[1]), d[2]), d[3]), d[4]));
		
		  Scanner scan = new Scanner(System.in);
	      System.out.print("배열의 갯수 입력:");
	      int n = scan.nextInt();
	      int[] arr = new int[n];      


	      System.out.println("배열값 입력: ");
	      for (int i = 0; i < arr.length; i++) {
	         arr[i] = scan.nextInt();
	      }

	      int maxx = arr[0];
	      int minn = arr[0];
	      
	      for (int i = 0; i < arr.length; i++) {
	         if (max < arr[i]) {
	            max = arr[i];
	         } 
	      }
	      
	      for (int i = 0; i < arr.length; i++) {
	         if (min > arr[i]) {
	            min = arr[i];
	         } 
	      }
	      System.out.print("최댓값: " + maxx + "\n최소값: " + minn);

		
		
	}
}
