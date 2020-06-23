package com.hk.web;

import java.util.Scanner;

public class E015Sum {
	public static void main(String[] args) {
		
		// 프로그래밍이란 ? 어떤 문제를 절차나 순서를 가지고 풀면 된다.
		Scanner stdIn = new Scanner(System.in);
		 System.out.print("n의 값 : "); // 사용자에게 질문
		 int n = stdIn.nextInt();
		 
		 int sum = 0;
		 
		 // 반복문
		 for(int i = 1; i <= n; i++) {
			 sum += i; // sum = sum + i;
		 }
		 System.out.println("1부터 " + n + "까지의 합은 " + sum);
		 
		 // 가우스
		 sum = n * (n+1) / 2;
		 
		 System.out.println("1부터 " + n + "까지의 합은 " + sum);
		 
		 
		 sum = 0;
		 
		 // 반복문
		 for(int i = 1; i <= n; i++) {
			 sum += i*i;
		 }
		 System.out.println("1부터 " + n + "까지의 합은 " + sum);
		
		 // Math.pow(n, 2) = n*n;
		 sum = 0;
		 for(int i = 1; i <= n; i++) {
			 sum += Math.pow(i, 2); // i * i
		 }
		 System.out.println("1*1부터 " + n + " * " + n + "까지의 합은 : " + sum);
		 
		 // 다른 방법
		 sum = n * (n+1) * (2*n+1) / 6;
		 System.out.println("1*1부터 " + n + " * " + n + "까지의 합은 : " + sum);
		 
		 // 10개의 정수를 입력해서 배열을 만들고
		 // 3의 배수값만 출력하시오
		 
		 int[] a = new int[10];
		 for(int i = 1; i < a.length; i++) {
			 System.out.print("정수를 입력하시오 : ");
			 a[i] =stdIn.nextInt();
		 }
		 
		 for(int i = 1; i < a.length; i++) {
			 if(a[i]%3==0) {
				 System.out.print(a[i] + " ");
			 }
		 }			
	}
}
