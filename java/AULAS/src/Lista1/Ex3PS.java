/*
 * Faça um sistema que leia o tempo de duração de um evento em uma 
 * fábrica expressa em segundos e mostre-o expresso em horas, minutos e segundos. 
 */

package Lista1;

import java.util.Scanner;

public class Ex3PS {
	public static void main(String[] args) {
		int segTotais,seg,min,horas;
		Scanner leia = new Scanner(System.in);
		
		System.out.println("Escreva quantos segundos tem o evento :");
		segTotais = leia.nextInt();
		
		horas = segTotais/3600;
		min = (segTotais%3600)/60;
		seg = (segTotais%3600)%60;
		
		System.out.println("O evento terá :"+horas+"h "+min+" minuto(s) e "+seg+" segundo(s)");
	}
}
