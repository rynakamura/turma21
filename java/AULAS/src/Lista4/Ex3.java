package Lista4;

import java.util.Locale;

public class Ex3 {
	public static void main(String[] args) {
		Locale.setDefault(Locale.US);
		
		int[][] matriz = new int[3][3];
		int max=100,min = 0,maior10=0;
		
		for(int linha=0;linha<3;linha++) {
			for(int coluna=0;coluna<3;coluna++) {
				matriz[linha][coluna]= (int)(Math.random()*(max-min)+min);
				System.out.print(matriz[linha][coluna]+"\t");
				if(matriz[linha][coluna]>10) {
					maior10++;
				}
			}
			System.out.println();
		}
		
		System.out.println("\nOs números foram sorteados entre 0 e 100");
		System.out.printf("Houveram %d números sorteados na matriz que são maiores que 10!!",maior10);
	}
}
