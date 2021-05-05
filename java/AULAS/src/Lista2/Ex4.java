/*
 * Faça um programa em que permita a entrada de um número qualquer 
 * e exiba se este número é par ou ímpar. Se for par exiba também a raiz quadrada 
 * do mesmo; se for ímpar exiba o número elevado ao quadrado.
 */

package Lista2;

import java.util.Locale;
import java.util.Scanner;

public class Ex4 {
	public static void main(String[] args) {
		Locale.setDefault(Locale.US);
		Scanner leia = new Scanner(System.in);
		double num=0.00;
		
		System.out.print("Digite um número : ");
		num=leia.nextDouble();
		
		if(num%2==0) {
			System.out.printf("O seu número é par e a raiz dele é %.2f",(Math.sqrt(num)));
		}else {
			System.out.printf("O seu número é impar e o quadrado dele é %.2f",(Math.pow(num, 2.0)));
		}
	}
}
