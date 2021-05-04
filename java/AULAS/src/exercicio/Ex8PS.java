/*
 * 8. O custo ao consumidor de um carro novo é a soma do custo de fábrica
 *  com a percentagem do distribuidor e dos impostos (aplicados ao custo de fábrica).
 *   Supondo que a percentagem do distribuidor seja de 28% e os impostos de 45%,
 *    escrever um sistema que leia o custo de fábrica de um carro e escreva o
 *     custo ao consumidor. 
 */

package exercicio;

import java.util.Scanner;

public class Ex8PS {
	public static void main(String args[]) {
		final double impostos=0.45, distribuidor=0.28;
		double custoFabrica,custoFinal;
		Scanner leia = new Scanner(System.in);
		
				
		System.out.println("Qual o custo de fabrica? ");
		custoFabrica = leia.nextDouble();
		
		custoFinal = (1+impostos+distribuidor)*custoFabrica;
		System.out.println("O custo final será de "+custoFinal);
	}
}
