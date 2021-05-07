package exemplos;

import java.util.Locale;
import java.util.Scanner;

public class TimesFut {
	public static void main(String[] args) {
		Locale.setDefault(Locale.US);
		Scanner leia = new Scanner(System.in);
		
		String times[] = {"SFPC","PALMEIRAS","SANTOS","BRAGANTINO"};
		int pontos[]= new int[4];
		char resultado = ' ';
		
		for(int rodadas =0; rodadas<pontos.length;rodadas++) {
			for(int x = 0;x<times.length;x++) {
				System.out.printf("Qual foi o resultado do time %s (V/E/D)",times[x]);
				resultado = leia.next().toUpperCase().charAt(0);
				if(resultado == 'V') {
					pontos[x]+=3;
				}else if(resultado == 'E') {
					pontos[x]+=1;
				}
			}
			
		}
		System.out.println("\nFIM DO CAMPEONATO");
		System.out.println("-------------------------------------------");
		for(int x = 0;x<4;x++) {
			System.out.printf("O time %s fez %d pontos ao fim das rodadas \n",times[x],pontos[x]);
			
		}
		
		
		
	}
}
