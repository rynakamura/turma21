/*
 * Escreva  um sistema que
 *  leia três números inteiros e positivos (A, B, C)
 *   e calcule a seguinte expressão: 
 */

package exercicio;

import java.util.Scanner;

public class Ex4PS {
	public static void main(String[] args) {
	double a,b,c,r,s,d;
	Scanner leia = new Scanner(System.in);
	
	System.out.println("Qual o valor de A? ");
	a = leia.nextInt();
	System.out.println("Qual o valor de B? ");
	b = leia.nextInt();
	System.out.println("Qual o valor de C? ");
	c = leia.nextInt();
	
	r = Math.pow((a+b), 2.0);
	s = Math.pow((c+b), 2.0);
	d = (r+s)/2;
	System.out.println("O valor de D é :"+d);
	}
}
