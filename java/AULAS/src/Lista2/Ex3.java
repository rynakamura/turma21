/*
 * Faça um programa que receba a idade de uma pessoa e 
 * mostre na saída em qual categoria ela se encontra:
10-14 infantil
15-17 juvenil
18-25 adulto

 */

package Lista2;

import java.util.Locale;
import java.util.Scanner;

public class Ex3 {

	public static void main(String[] args) {
		Locale.setDefault(Locale.US);
		Scanner leia = new Scanner(System.in);
		
		int idade;
		
		System.out.print("Digite a sua idade: ");
		idade = leia.nextInt();
		if (idade>=10 && idade<=14) {
			System.out.printf("Você possui %d anos e se encontra na categoria infantil ",idade);
		}else if(idade>=15 && idade<=17) {
			System.out.printf("Você possui %d anos e se encontra na categoria juvenil ",idade);
		}else if(idade>=18 && idade<=25) {
			System.out.printf("Você possui %d anos e se encontra na categoria adulto ",idade);
		}

	}

}
