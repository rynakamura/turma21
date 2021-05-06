/*
 * Faça um programa que entre com três números e coloque em ordem crescente.
 */
package Lista2;

import java.util.Arrays;
import java.util.Locale;
import java.util.Scanner;

public class Ex2 {

	public static void main(String[] args) {
		Locale.setDefault(Locale.US);
		Scanner leia = new Scanner(System.in);
		
		int[] num= {0,0,0};
		
		for(int x = 0;x<3;x++) {
			System.out.printf("Digite o %d º numero : ",(x+1));
			num[x]=leia.nextInt();
			
		}
		
		Arrays.sort(num);
		System.out.println("Os numeros em ordem crescente são : ");
		for(int x = 0;x<3;x++) {
			System.out.printf("\n%d º o número : %d ",(x+1),(num[x]));

			
		}
		leia.close();
	}

}
