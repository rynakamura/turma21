/*
 * programa
{
    funcao inicio()
    {
		inteiro numero = 233
		
		
		faca 
		{ 
			se(numero >= 300 e numero <=400){

				escreva(numero , " + 3 = ")
			numero = numero +3
			escreva(numero,"\n")
			}
			
			se (numero >=233 e numero <300 ou numero >400 e numero < 456)
			{
				escreva(numero , " + 5 = ")
				numero = numero +5
		escreva(numero,"\n") 
				}
				
			
		} enquanto (numero >= 233 e numero <456)
		
	se (numero <233 ou numero >456){
		escreva("O numero inserido nao esta entre 233 a 456")
		}

    }
}

 */

package exemplos;

import java.util.Scanner;

public class Traducao2 {
	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		
		int numero = 233;
		
		do 
		{ 
			if(numero >= 300 && numero <=400){

				System.out.print(numero + " + 3 = ");
				numero = numero +3;
				System.out.println(numero+"\n");
				}
				
			if ((numero >=233 && numero <300) || (numero >400 && numero < 456))
				{
				System.out.print(numero + " + 5 = ");
				numero = numero +5;
				System.out.println(numero+"\n") ;
				}
				
			
		} while (numero >= 233 && numero <456);
	}
}
