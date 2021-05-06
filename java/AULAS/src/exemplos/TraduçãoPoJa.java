/*
 * programa
{
	
	funcao inicio()
	{
	
		ENQUANTO
		 * 1- Elaborar um programa que efetue a leitura sucessiva de valores numéricos e
apresente no final o total do somatório ok
, a média ok
e o total de valores lidos. ok
O programa
deve fazer as leituras dos valores enquanto o usuário estiver fornecendo valores
positivos. Ou seja, o programa deve parar quando o usuário fornecer um valor
negativo.
	
		inteiro numero=1, somatorio=0, media=0, totalValoresLidos=0, qtdVezes=0

		enquanto (numero != 0)
		{
			escreva ("Informe um numero positivo: ")
			leia (numero)

		somatorio = somatorio + numero

			se (numero>0)
			{
				totalValoresLidos++
			}

		media = somatorio / totalValoresLidos
		
		}

		escreva ("\nA soma dos valores informados é de: ", somatorio)
		escreva ("\nA quantidade de vezes que foram informados numeros !=0 foi de: ",totalValoresLidos, " vezes")
		escreva ("\nA média dos numeros informados é: ", media)
		 
	}
}

 */

package exemplos;

import java.util.Scanner;

public class TraduçãoPoJa {
	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		double numero=1, somatorio=0, totalValoresLidos=0,media=0;

		
		while(numero >= 0)
		{
			System.out.println("Informe um numero positivo: ");
			numero = leia.nextInt();

		somatorio = somatorio + numero;
		totalValoresLidos++;
			if (numero<=0)
			{
				somatorio = somatorio - numero;
				totalValoresLidos--;
			}

		media = somatorio / totalValoresLidos;
		
		}

		System.out.printf("\nA soma dos valores informados é de: %.2f", somatorio);
		System.out.printf("\nA quantidade de vezes que foram informados numeros antes do negativo foi de: %.0f vezes",totalValoresLidos);
		System.out.printf("\nA média dos numeros informados é: %.2f", media);
		 
	}
}
