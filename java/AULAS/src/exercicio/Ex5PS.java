/*
 * Faça um sistema que leia as 3 notas de um aluno e calcule a média final deste aluno.
 *  Considerar que a média é ponderada e que o peso das notas é: 2,3 e 5, respectivamente
 */

package exercicio;

import java.util.Scanner;

public class Ex5PS {
	public static void main(String[] args) {
		double nota1,nota2,nota3,resultado;
		Scanner leia = new Scanner(System.in);
		
		System.out.println("Escreva sua nota da primeira prova : ");
		nota1=leia.nextDouble();
		System.out.println("Escreva sua nota da segunda prova : ");
		nota2=leia.nextDouble();
		System.out.println("Escreva sua nota da terceira prova : ");
		nota3=leia.nextDouble();
	
		resultado = (2*nota1+3*nota2+5*nota3)/10;
		System.out.println("Sua média é :"+resultado);
	}
}
